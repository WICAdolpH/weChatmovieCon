const qcloud = require('../../vendor/wafer2-client-sdk/index.js')
const config = require('../../config.js')
require("../../app.js")
const movie = ''
Page({

  /**
   * 页面的初始数据
   */
  data: {
    movieList:[],
    userInfo: null,
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let isLogin = getApp().globalData.isLogin
    let setStatus = getApp().globalData.setStatus
    wx.checkSession({
      success: () => {
        
        let userInfo = []
        this.data.setStatus = 2
        this.setData({
          setStatus: this.data.setStatus
        })
        wx.login({
          success: res => {
            getApp().globalData.isLogin = 1
            getApp().globalData.setStatus = 2
            var code = res.code
            if (res.code) {
              wx.getUserInfo({
                success: info => {
                  
                  var rawData = info['rawData'];
                  var signature = info['signature'];
                  var encryptData = info['encryptData'];
                  var encryptedData = info['encryptedData']; //注意是encryptedData不是encryptData...坑啊
                  var iv = info['iv'];
                  wx.request({
                    url: 'http://59.110.213.233/movieJs/api/loginAPI.php',
                    data: {
                      "code": code,
                      "rawData": rawData,
                      "signature": signature,
                      "encryptData": encryptData,
                      'iv': iv,
                      'encryptedData': encryptedData
                    },
                    success: res => {
                      wx.hideLoading()
                      if (res.statusCode != 200) {
                        wx.showModal({
                          title: '登陆失败',
                        })
                      }
                      userInfo.push({
                        name: res.data.name,
                        image: res.data.image,
                        openId: res.data.openId
                      })
                      getApp().globalData.openId = res.data.openId;
                      this.getContent(res.data.openId)
                    }
                  })
                }
              })
            } else {
              console.log('登录失败！' + res.errMsg)
            }
          },
        })
      },
      fail: () => {
        if (getApp().globalData.isLogin == 0) {
          wx.navigateTo({
            url: '../login/login',
          })
        }
      }
    })
    


    this.details()
    this.userCon()
  },

  userCon() {
    
  },


  getContent(openId) {

    let userInfo = [];
    
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/collectcon.php',
      data: {
        openId: openId
      },
      success: res => {
        
        for (let i = 0; i < res.data.length; i++) {
          userInfo.push({

            name: res.data[i].name,
            userImage: res.data[i].userImage,
            content: res.data[i].content,
            movieId: res.data[i].movieId,
            movieImage: res.data[i].movieImage,
            movieTitle: res.data[i].title

          })
        }
        
        this.setData({
          userInfo: userInfo
        })
      }
    })
  },


  /*  今天写到这里 随机数已经生成 */
  details(){
    wx.showLoading({
      title: '电影信息加载中',
    })
    let userCon = []
    let movieList = []
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/movieHome.php',
      success: result=>{
        wx.hideLoading()
        //console.log(result.data)
        result = result.data
        movieList.push({
          id: result.id,
          title: result.title,
          imageUrl: result.movieImage,
          description: result.description
        }),
        this.setData({
          movieList: movieList
        }),

        wx.request({
          url: 'http://59.110.213.233/movieJs/api/movieHome.php',
          data: {
            movieId : result.id
          },
          success: res => {
            userCon.push({
              openId : res.data.openId,
              image:res.data.userImage,
              name:res.data.name
            })
            
            
            this.setData({
              userCon:userCon[0]
            })
          },
        })

      }
    })
  },

  onTapImage(event){
    wx.navigateTo({
      url: '../detail/detail?id=' + event.currentTarget.dataset.hi ,
      success: res=>{
      }
    })
  },
  onTapHot(){
    wx.navigateTo({
      url: '../hotMovie/hotMovie',
      success: res => {
      }
    })
  },

  onTapMVdetail(event) {
    
    
    wx.navigateTo({
      url: '../movieDetail1/movieDetail1?id=' + event.currentTarget.dataset.hi + '&openId=' + event.currentTarget.dataset.openid,
      success:res=>{
        
      }
    })
  },

  getLogin(){
      wx.checkSession({
        success: res=> {
          //session_key 未过期，并且在本生命周期一直有效
          
        },
        fail() {
          // session_key 已经失效，需要重新执行登录流程
          wx.login() //重新登录
        }
      })
  },
  
  onTapLogin(){
    wx.navigateTo({
      url: '../login/login',
    })
  },
  

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    let isLogin = getApp().globalData.isLogin
    let setStatus = getApp().globalData.setStatus
    wx.checkSession({
      success: () => {

        let userInfo = []
        this.data.setStatus = 2
        this.setData({
          setStatus: this.data.setStatus
        })
        wx.login({
          success: res => {
            getApp().globalData.isLogin = 1
            getApp().globalData.setStatus = 2
            var code = res.code
            if (res.code) {
              wx.getUserInfo({
                success: info => {

                  var rawData = info['rawData'];
                  var signature = info['signature'];
                  var encryptData = info['encryptData'];
                  var encryptedData = info['encryptedData']; //注意是encryptedData不是encryptData...坑啊
                  var iv = info['iv'];
                  wx.request({
                    url: 'http://59.110.213.233/movieJs/api/loginAPI.php',
                    data: {
                      "code": code,
                      "rawData": rawData,
                      "signature": signature,
                      "encryptData": encryptData,
                      'iv': iv,
                      'encryptedData': encryptedData
                    },
                    success: res => {
                      wx.hideLoading()
                      if (res.statusCode != 200) {
                        wx.showModal({
                          title: '登陆失败',
                        })
                      }
                      userInfo.push({
                        name: res.data.name,
                        image: res.data.image,
                        openId: res.data.openId
                      })
                      getApp().globalData.openId = res.data.openId;
                      this.getContent(res.data.openId)
                    }
                  })
                }
              })
            } else {
              console.log('登录失败！' + res.errMsg)
            }
          },
        })
      },
      fail: () => {
        if (getApp().globalData.isLogin == 0) {
          wx.navigateTo({
            url: '../login/login',
          })
        }
      }
    })
  },

  
})