// client/pages/login/login.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    setStatus : 0,
    currentTab: 0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let isLogin = getApp().globalData.isLogin
    let setStatus = getApp().globalData.setStatus
    this.setData({
      setStatus,
      isLogin
    })
    wx.checkSession({
      success: () => {
        wx.showLoading({
          title: '登陆验证中',
        })
        let userInfo = []

        getApp().globalData.isLogin = 1
        getApp().globalData.setStatus = 2
        

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
              console.log(res.code)
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
                      this.getOwnContent(res.data.openId)
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
        
      }
    })
    var that = this;
    this.recorderManager = wx.getRecorderManager();
    this.recorderManager.onError(function () {
      that.tip("录音失败！")
    });
    this.recorderManager.onStop(function (res) {
      that.setData({
        src: res.tempFilePath,
        record: res.tempFilePath,
        status: "record"
      })

      that.tip("录音完成！")

    });

    this.innerAudioContext = wx.createInnerAudioContext();
    this.innerAudioContext.onError((res) => {

      that.tip("播放录音失败！")
    })
    
  },

  

  login() {
    wx.getSetting({
      success:res=>{
        if (res.authSetting['scope.userInfo'] === false) {
          this.data.setStatus = 1
          this.setData({
            setStatus: this.data.setStatus
          })          
          wx.showModal({
            title: '提示',
            content: '请授权我们获取您的用户信息',
            showCancel: false
          })          
        }else {
          getApp().globalData.isLogin = 1
          getApp().globalData.setStatus = 2
          this.data.setStatus = 2
          this.setData({
            setStatus: this.data.setStatus
          })
          let userInfo = []
          wx.login({
            success: res => {
              var code = res.code
              if (res.code) {
                console.log(res.code)
                wx.getUserInfo({
                  success: info => {
                    console.log(info)
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
                        getApp().globalData.openId = res.data.openId
                        
                        console.log(res.data)
                        if (res.statusCode != 200) {
                          wx.showModal({
                            title: '登陆失败',
                          })
                        }                        
                        
                        
                        this.getContent(res.data.openId)
                        this.getOwnContent(res.data.openId)
                        getApp().globalData.getLoginStatus = true;
                        getApp().globalData.isLogin = 1;
                        
                        /*wx.navigateTo({
                          url: '../user/user?name=' + userInfo[0].name + '&image=' + userInfo[0].image,
                        })*/
                      }
                    })
                  }
                })
              } else {
                console.log('登录失败！' + res.errMsg)
              }
            },
          })
        }
      }
    })    
    
  },

  getContent(openId) {
    
    let userInfo = [];
    
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/collectcon.php',
      data: {
        
        openId: getApp().globalData.openId
      },
      success: res => {
        
        for(let i=0; i<res.data.length; i++) {
          userInfo.push({
            
            name: res.data[i].name,
            userImage: res.data[i].userImage,
            content: res.data[i].content,
            record : res.data[i].record,
            movieId: res.data[i].movieId,
            movieImage:res.data[i].movieImage,
            movieTitle:res.data[i].title

          })
        }
        
        
        
        this.setData({
          userInfo : userInfo
        })
      }
    })
  },

  getOwnContent(openId) {

    let ownContent = [];

    wx.request({
      url: 'http://59.110.213.233/movieJs/api/getOwnContent.php',
      data: {

        openId: getApp().globalData.openId
      },
      success: res => {
        console.log(res)
        console.log(res.data)
        for (let i = 0; i < res.data.length; i++) {
          ownContent.push({

            name: res.data[i].name,
            userImage: res.data[i].userImage,
            content: res.data[i].content,
            record: res.data[i].record,
            movieId: res.data[i].movieId,
            movieImage: res.data[i].movieImage,
            movieTitle: res.data[i].title

          })
        }



        this.setData({
          ownContent : ownContent
        })
      }
    })
  },
  



  tip: function (msg) {
    wx.showModal({
      title: '提示',
      content: msg,
      showCancel: false
    })
  },

  /**
   * 录制mp3音频
  */
  startRecordMp3: function () {

    this.recorderManager.start({
      format: 'mp3'
    });
    this.setData({
      statusContent: 0
    })
  },

  /**
   * 停止录音
   */
  stopRecord: function () {
    this.recorderManager.stop()
  }

  /**
   * 播放录音
   */
  , playRecord: function (event) {
    console.log(this)
    console.log(event)
    var that = this;

    var src = event.currentTarget.dataset.record;
    if (src == '') {
      this.tip("请先录音！")
      return;
    }
    this.innerAudioContext.src = event.currentTarget.dataset.record;
    this.innerAudioContext.play()
  },
  //滑动切换
  swiperTab: function (e) {
    var that = this;
    that.setData({
      currentTab: e.detail.current
    });
  },
  //点击切换
  clickTab: function (e) {
    var that = this;
    if (this.data.currentTab === e.target.dataset.current) {
      return false;
    } else {
      that.setData({
        currentTab: e.target.dataset.current
      })
    }
  }

})