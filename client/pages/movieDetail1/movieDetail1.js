require("../../app.js")
Page({

  /**
   * 页面的初始数据
   */
  data: {
    movieList: '',
    actionSheetHidden: true,
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    if (getApp().globalData.isLogin == 0){
      wx.navigateTo({
        url: '../login/login',
      })
    }


    let openId = options.openId
    let movieId = options.id
    console.log(options)
    console.log(movieId)
    this.setData({
      movieId: options.id,
      openId : openId
    })
    this.getMovieInfo(movieId)
    this.getContent(movieId,openId)

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

  

  getContent(movieId,openId){
    let userInfo = [];
    
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/contentMv.php',
      data:{
        movieId :movieId,
        openId : openId
      },
      success: res=>{
        var status = ""
        if(res.data.record != null ) {
          status = "record";
        }else{
          status = "content"
        }

        var commentVal = res.data.record ? res.data.data.record : res.data.content
        console.log(commentVal)
        userInfo.push({
          id : res.data.id,
          name : res.data.name,
          openId : res.data.openId,
          image:res.data.userImage,
          content:commentVal
        })
        
        this.setData({
          userInfo: userInfo[0],
          status : status
        })
      }
    })
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
            id:result.id,
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
  //显示action-sheet
  showActionSheet: function () {
    this.setData({ actionSheetHidden: false })
  },
  //点击取消
  actionSheetChange: function () {
    console.log("actionSheetChange")
    this.setData({ actionSheetHidden: true })
  },
  //条目点击事件
  actionSheetItem: function (event) {
    
    this.setData({ actionSheetHidden: true })
    if (event.currentTarget.dataset.name === "name1" ){
      
      wx.navigateTo({
        url: '../editCon/editCon?id=' + event.currentTarget.dataset.id + '&openId=' + event.currentTarget.dataset.openid,
      })
    }
    if (event.currentTarget.dataset.name === "name2") {

      wx.navigateTo({
        url: '../editRecord/editRecord?id=' + event.currentTarget.dataset.id + '&openId=' + event.currentTarget.dataset.openid,
      })
    }
  },

  collectCon(event){
    wx.showLoading({
      title: '收藏中',
    })
    console.log(this)
    var status = this.data.status 
    let content = this.data.userInfo.content
    let movieId = this.data.userInfo.id
    let userImage = this.data.userInfo.image
    let userName = this.data.userInfo.name
    let openId = getApp().globalData.openId
    let collectOpId = this.data.userInfo.openId
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/addCollectCon.php',
      data:{
        movieId,
        userImage,
        userName,
        openId,
        content,
        status,
        collectOpId
      },
      success: res=>{
        wx.hideLoading()
        console.log(res)
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
  , playRecord: function () {
    console.log(this)
    var that = this;
    var src = this.data.content;
    if (src == '') {
      this.tip("请先录音！")
      return;
    }
    this.innerAudioContext.src = this.data.content;
    this.innerAudioContext.play()
  }

})