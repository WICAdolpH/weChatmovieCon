// client/pages/editCon/editCon.js
require("../../app.js")
Page({

  /**
   * 页面的初始数据
   */
  data: {

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let record = ""
    let commentValue = ""
    let status = ""
    var recorderValue = false
    this.setData({
      statusContent:1,
      statusRecord : 1
    })
    var that = this;
    this.recorderManager = wx.getRecorderManager();
    this.recorderManager.onError(function(){
      that.tip("录音失败！")
    });
    this.recorderManager.onStop(function(res){
      that.setData({
        src: res.tempFilePath,
        record: res.tempFilePath,
        status : "record"
      })
      
      that.tip("录音完成！")
      
    });

    this.innerAudioContext = wx.createInnerAudioContext();
    this.innerAudioContext.onError((res) => {
      
      that.tip("播放录音失败！")
    })



    let editFinsh = getApp().globalData.editFinsh
    let openId = getApp().globalData.openId
    let movieId = options.id
    
    this.setData({
      movieId: options.id,            
      editFinsh:editFinsh,
      
    })
    this.getMovieInfo(movieId)
    this.getUser(openId)
  },

  getMovieInfo(movieID) {
    let movieList = []
    wx.showLoading({
      title: '电影信息加载中',
    }),
      wx.request({
        url: 'http://59.110.213.233/movieJs/api/moviesAPI.php',
        data: {
          id: movieID,
        },
        success: result => {
          result = result.data
          wx.hideLoading()
          movieList.push({
            id: result.id,
            title: result.title,
            imageUrl: result.movieImage,
            description: result.description
          })

          this.setData({
            movieList: movieList
          })

        }
      })
  },
  getUser(openId){
    let userInfo = []
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/userInfo.php',
      data:{
        openId: getApp().globalData.openId
      },
      success :res=>{ 
        console.log(res)
        userInfo.push({
          name: res.data.userName,
          userImage : res.data.userImage,
          openId: getApp().globalData.openId
        })
        
        
        this.setData({
          userInfo : userInfo[0]
        })
      }
    })
  },

  onInput(event) {
    
    this.setData({
      commentValue: event.detail.value.trim(),
      statusRecord : 0,
      status : 'content'
    })
  },

  addComment(event) {
    
    
    let movieId = event.currentTarget.dataset.movieid
    
    this.editFinsh = 1
    this.setData({
      editFinsh : 1
    })
    let openId = getApp().globalData.openId
    var statusRecord = 0
    var statusContent = 0
    console.log(this.data.commentValue)
    console.log(this.data.src)
    if(this.data.commentValue != undefined) {
      this.setData({
        statusContent : 1
      })
    }
    if( this.data.src != undefined) {
      this.setData({
        statusRecord : 1
      })
    }
    let content = this.data.commentValue ? this.data.commentValue : this.data.src
    
    if (!content) return

    
    this.status = "content"
    this.setData({
      content
    })
    console.log(this)
    console.log(content)
    
  },

  releaseFilm(){
    wx.showLoading({
      title: '正在发表评论'
    })
    let openId = getApp().globalData.openId


    console.log(this)
    
    let statusRecord = this.data.statusRecord
    let statusContent = this.data.statusContent
    let content = this.data.content
    let movieId = this.data.movieId
    
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/addComment.php',
      data: {
        openId: getApp().globalData.openId,
        content : content,
        movieId: movieId,
        statusRecord : statusRecord,
        statusContent : statusContent
      },
      success: res => {
        
        
        wx.navigateTo({
          url: '../filmRevList/filmRevList?movieId='+this.data.movieId,
        })

      }
    })
  },

  reEdit(){
    this.setData({
      editFinsh : 0
    })
  },
  

  startRecordAac: function () {
    this.recorderManager.start({
      format: 'aac'
    });
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
      statusContent : 0
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
  , playRecord: function () {
    console.log(this)
    var that = this;
    var src = this.data.src;
    if (src == '') {
      this.tip("请先录音！")
      return;
    }
    this.innerAudioContext.src = this.data.src;
    this.innerAudioContext.play()
  }


})