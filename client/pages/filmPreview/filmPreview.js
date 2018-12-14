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
    console.log(options)
    console.log(decodeURIComponent(options.test))
    var statusContent = false
    var statusRecord = false
    
    if (options.record != "null") {
      statusRecord = true
      console.log("this is 21")
      console.log(statusRecord)
    } 
    if(options.content != "null") {
      statusContent = true
      console.log(statusContent)
    }
    let movieId = options.movieId
    
    
    
    
    let userimage = options.userimage
    let content = decodeURIComponent(options.content) ? decodeURIComponent(options.content) : ""
    let record = decodeURIComponent(options.record) ? decodeURIComponent(options.record) : ""
    console.log(record)
    console.log(content)
    let commentVal = ""
    if(content == "null"){
      commentVal = record;
    }else{
      commentVal = content;
    }
    //let record = options.record ? options.record : ""
    
    console.log(commentVal)
    console.log(this)
    
    let name = options.name
    console.log(options)
    console.log(movieId)
    console.log(statusRecord)
    console.log(statusContent)     
    this.setData({
      movieId: movieId,
      statusRecord : statusRecord,
      statusContent : statusContent,
      content : commentVal,
      openId : options.openId,
      name : name,
      userimage : userimage,
      commentVal: commentVal,
      record : record ? true : false,
      cotent :content ? true : false
    })
    this.getMovieInfo(movieId)
    console.log(statusContent)
    console.log(statusRecord)
    console.log(record)
    console.log(content)
    var that = this;
    this.recorderManager = wx.getRecorderManager();
    this.recorderManager.onError(function () {
      that.tip("录音失败！")
    });
    this.recorderManager.onStop(function (res) {
      that.setData({
        src: res.tempFilePath,
        
      })

      that.tip("录音完成！")

    });

    this.innerAudioContext = wx.createInnerAudioContext();
    this.innerAudioContext.onError((res) => {

      that.tip("播放录音失败！")
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
    if (event.currentTarget.dataset.name === "name1" ) {

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

  collectCon(event) {
    wx.showLoading({
      title: '收藏中',
    })
    console.log(this)
    
    let content = this.data.content
    
    
    let movieId = this.data.movieId
    let userImage = this.data.userimage
    let userName = this.data.name
    let openId = getApp().globalData.openId
    let collectOpId = this.data.openId
    console.log(this.data.statusContent)
    console.log(this.data.statusRecord)
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/addCollectCon.php',
      data: {
        movieId,
        userImage,
        userName,
        openId,   
        content,
        statusRecord : this.data.statusRecord,
        statusContent : this.data.statusContent,
        collectOpId
      },
      
      success: res => {
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
    console.log(this.data.statusContent)
    console.log(this.data.statusRecord)
    var src = this.data.commentVal;
    if (src == '') {
      this.tip("请先录音！")
      return;
    }
    this.innerAudioContext.src = this.data.commentVal;
    this.innerAudioContext.play()
  }
})