App({
  /**
   * 当小程序初始化完成时，会触发 onLaunch（全局只触发一次）
   */
  onLaunch: function () {
    
  },
  data: {
    getLoginStatus: 0,
    setStatus: 0
  },
  
  globalData: {
    getLoginStatus: 0,
    setStatus: 0,
    isLogin : 0,
    openId : '',
    editFinsh: 0
  }
})
