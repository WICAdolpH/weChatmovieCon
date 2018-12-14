Page({

  /**
   * 页面的初始数据
   */
  data: {
    movieList:'',
    actionSheetHidden: true,
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let movieId = options.id
    this.setData({
      movieId: options.id
    })
    this.getMovieInfo(options.id)
    this.getOwnContent(options.id)
  },

  getMovieInfo(movieId) {
    let movieList = []
    wx.showLoading({
      title: '电影信息加载中',
    }),
      wx.request({
      url: 'http://59.110.213.233/movieJs/api/moviesAPI.php',
      data:{
        id : movieId,
      },
      success: result=>{
        result = result.data
        wx.hideLoading()
        movieList.push({
          title : result.title,
          imageUrl : result.movieImage,
          description: result.description
        })
        
        this.setData({
          movieList : movieList
        })
        
      }
      })
  },
  seeCom(){
    console.log(this)
    wx.navigateTo({
      url: '../filmRevList/filmRevList?movieId='+this.data.movieId,
      
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
    var movieId = this.data.movieId
    console.log(this)
    console.log(event.currentTarget.dataset)
    this.setData({ actionSheetHidden: true })
    if (event.currentTarget.dataset.name == "name1") {
      console.log()
      
      console.log(this)
      console.log(123)
      console.log(event.currentTarget.dataset)
      wx.request({
        url: 'http://59.110.213.233/movieJs/api/ifContented.php',
        data: {
          movieId: movieId,
          openId: getApp().globalData.openId
        },
        success: res => {
          
          if (res.data == "1") {
          
          console.log(this.data.info.movieId)
          console.log(this)          
          var id = this.data.info.id
          var content = this.data.info.content 
          var movieId = this.data.info.movieId
          var name = this.data.info.name
          var openId = this.data.info.openId
          var record = this.data.info.record
          var userimage = this.data.info.userImage
            wx.navigateTo({
              
              url: '../filmPreview/filmPreview?movieId=' + movieId + "&content=" + encodeURIComponent(content) + "&userimage=" + userimage + "&name=" + name + "&record=" + encodeURIComponent(record) + "&openId=" + openId,
            })
          } else {
            wx.navigateTo({
              url: '../editCon/editCon?id=' + this.data.movieId,
            })
          }
        }
      })
    }
    if ( event.currentTarget.dataset.name == "name2") {
      
      console.log(123)
      console.log(event.currentTarget.dataset)
      console.log(getApp().globalData.openId)
      console.log(this)
      wx.request({
        url: 'http://59.110.213.233/movieJs/api/ifContented.php',
        data: {
          movieId: this.data.movieId,
          openId: getApp().globalData.openId
        },
        
        success: res => {
          if (res.data == "1" ) {
          
          console.log(res)
          var content = this.data.info.content
          var id = this.data.info.id
          var movieId = this.data.info.movieId
          var name = this.data.info.name
          var openId = this.data.info.openId
          var record = this.data.info.record
          var userimage = this.data.info.userImage
          console.log(res)
          
            wx.navigateTo({

              url: '../filmPreview/filmPreview?movieId=' + movieId + "&content=" + encodeURIComponent(content) + "&userimage=" + userimage + "&name=" + name + "&record=" + encodeURIComponent(record) + "&openId=" + openId,
            })
          } else {
            wx.navigateTo({
              url: '../editRecord/editRecord?id=' + this.data.movieId,
            })
          }
        }
      })
    }
  },

  
  getOwnContent(movieId){
    
    let info = []
    console.log(getApp().globalData.openId)
    wx.request({
      url: 'http://59.110.213.233/movieJs/api/contentMv.php',
      data :{
        movieId : movieId,
        openId: getApp().globalData.openId
      },
      
      success :res=>{
        console.log(movieId)
        console.log(res)
        if( res.data != null) {
        info.push({
          id:res.data.id,
          movieId: res.data.movieId,
          name: res.data.name,
          openId: res.data.openId,
          record: res.data.record,
          userImage: res.data.userImage,
          content : res.data.content
        })
        console.log(info[0])
        this.setData({
          info:info['0']
        })
        }
        
      }
    })
  }
})