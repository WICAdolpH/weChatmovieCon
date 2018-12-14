// client/pages/filmRevList/filmRevList.js
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
    var that = this;
    this.recorderManager = wx.getRecorderManager();
    
    let movieId = options.movieId;
    this.getMovieCom(movieId)
    this.innerAudioContext = wx.createInnerAudioContext();
    
    this.innerAudioContext.onError((res) => {
      console.log(res)
      that.tip("播放录音失败！")
    })
  },
  getMovieCom(movieId){
    let userCom = [];
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/selectMvCom.php',
      data:{
        movieId: movieId
      },
      success:result=>{
        
        let res = result.data;
        for(let i=0; i<res.length; i++) {
          userCom.push({
            name : res[i].name,
            userImage : res[i].userImage,
            content : res[i].content,
            record : res[i].record,
            openId : res[i].openId
          })
        }
        console.log(res)
        this.setData({
          userCom : userCom
        })
        
      }
    })
  },
  toDetail(event){
    console.log(this)
    console.log(event.currentTarget.dataset)
    let content = event.currentTarget.dataset.content
    let userimage = event.currentTarget.dataset.imagesrc
    let name = event.currentTarget.dataset.name
    let record = event.currentTarget.dataset.record
    let openId = event.currentTarget.dataset.openid
    console.log(openId)
    console.log(record)
    wx.navigateTo({
      url: '../filmPreview/filmPreview?movieId=' + this.options.movieId + "&content=" + encodeURIComponent(content) + "&userimage=" + userimage + "&name=" + name + "&record=" + encodeURIComponent(record) + "&openId=" + openId + "&test=" + encodeURIComponent("=123.mp3"),
    })





  },

  playRecord(event) {
    var that = this;
    var src = event.currentTarget.dataset.record;
    
    this.innerAudioContext.src = event.currentTarget.dataset.record;
    this.innerAudioContext.play()
  },
  tip: function (msg) {
    wx.showModal({
      title: '提示',
      content: msg,
      showCancel: false
    })
  },
  toHome: function(){
    wx.navigateTo({
      url: '../home/home',
    })
  }
})