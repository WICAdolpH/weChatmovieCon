// client/pages/hotMovie/hotMovie.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    movieList: ""
  },

  onPullDownRefresh() {

    wx.stopPullDownRefresh()
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.getMovieList()
  },

  getMovieList() {
    let movieList = []
    wx.showLoading({
      title: '电影信息加载中',
    }),
      wx.request({
        url: 'http://59.110.213.233/movieJs/api/moviesAPI.php',
        success: result => {
          wx.hideLoading()
          let res = result.data
          console.log(res)
          for(let i=0; i<res.length; i++) {
            movieList.push({
              id : res[i].id,
              title : res[i].title,
              image : res[i].movieImage,
              category : res[i].category,
              description : res[i].description 
            })
          }
          
          this.setData({
            movieList: movieList
          })
        }
      })
  },
  onTapDetail(event){
    wx.navigateTo({
      url: '../detail/detail?id=' + event.currentTarget.dataset.hi,
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

  },

  
})