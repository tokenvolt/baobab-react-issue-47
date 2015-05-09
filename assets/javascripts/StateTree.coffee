Baobab          = require('baobab');
PureRenderMixin = require('react/addons').addons.PureRenderMixin;

module.exports = new Baobab({
  currentUser: {loggedIn: true}
  currentPath: '/'
  headerName: 'AudioReact'
  flashMessage: null
  loginButtonDisabled: true
  tracks: [
    {
      id: 1,
      title: 'Spieluhr',
      content: 'https://psv4.vk.me/c4596/u72603965/audios/f4e205edbe3f.mp3?extra=cblJikzvohjPsOan5ZK3qN_Rr4WVEn6LoBp3dgCesfaXZ4jamBhyI146Rc55DjvkYFzXLF9KQ2_lVy7FdmYRMXuyd9-W,285',
      author: 'Rammstein',
      currentlyPlayingAt: 0
      duration: 285
    }
    {
      id: 2,
      title: 'Burn',
      content: 'https://cs7-1v4.vk-cdn.net/p24/3e69ba71762938.mp3?extra=QnuHVxQQ-nvJhQch1ZmKNImdSx82et8DYl2Xi5xGam01yhLptflwF04DEniKkktbss_1Njl16VQXRKFjISyolmixWdOxgA,234',
      author: 'Ellie Goulding',
      currentlyPlayingAt: 0
      duration: 234
    }
    {
      id: 3,
      title: 'Codec',
      content: 'https://cs7-5v4.vk-cdn.net/p8/57798c1a955a44.mp3?extra=Hh6RlsDnMH5gBCCfLZI79GLCQmeXDf-vMveeoKb5W_TZEJHoFttHobkfAC0BRzwob2UvzBM8nORpUkQz5_qct8xSbZRG2Q,414',
      author: 'Zedd',
      currentlyPlayingAt: 0
      duration: 414
    }
    {
      id: 4,
      title: 'Game of Thrones',
      content: 'https://cs7-5v4.vk-cdn.net/p19/90d7f4af282e63.mp3?extra=VCBP9-h3voy1YB_PWPCBhAd5qpMARaQg4D7sdRwITZeA24imp81Gvy1pmZCB6BkDuGLFVfd45dHpIcbhKOeHvu5gpkf_aw,206'
      author: 'Ramin Djawaldi',
      currentlyPlayingAt: 0
      duration: 206
    }
    {
      id: 5,
      title: 'Million Voices',
      content: "https://psv4.vk.me/c5439/u12475574/audios/cfeba6b83329.mp3?extra=ZXAq0EE68pMRJPZtjJCCmGVm0SqsEk-wRO-KVgvEACL1cK6KvOyPbPLrLnohk-GB26QWQxEev3XBBmR1Vh4m6iMV7hpxFQ,357"
      author: 'Otto Knows',
      currentlyPlayingAt: 0
      duration: 357
    }
    {
      id: 6,
      title: 'Move, Shake, Hide',
      content: 'https://cs7-1v4.vk-cdn.net/p17/8350c5942f2d3d.mp3?extra=SL7N4R2nfvPKWZYeb2RL7awz6NefjESaS-GSSFi60wGDkXdpk_ghFW6MJ9DunQiSOx7o7DuLJJx3cWsWPHDxCUx6MMHF5g,207'
      author: 'Marmozets',
      currentlyPlayingAt: 0
      duration: 207
    }
  ]
  playlists: [
    {
      id: 1
      title: 'Misc'
      shuffle: false
      repeat: false
      tracks: [
        {
          id: 1,
          title: 'Spieluhr',
          content: 'https://psv4.vk.me/c4596/u72603965/audios/c65837186a02.mp3?extra=g0vMTOK-dDZF9g4cHXeyQA1Z0AULuaQmuAr64QaqMY3VD2PAPaPkNxIH22uBRPVHunloh2NWwI72dAGQK-HIXDwqJ5kE,285',
          author: 'Rammstein',
          currentlyPlayingAt: 0
          duration: 285
          hovered: false
        }
        {
          id: 2,
          title: 'Burn',
          content: 'https://cs7-1v4.vk-cdn.net/p24/a09b4cd016351d.mp3?extra=R82GLGiupfJ9W9vSjzr4ZLOJnjXCKhTh1qyZM6jgXdXGO4V8MoLUUECvtOfGg60oAROVx6uzQeve4bJdInRb4m4e1d5iDA,234',
          author: 'Ellie Goulding',
          currentlyPlayingAt: 0
          duration: 234
          hovered: false
        }
      ]
    }
  ]
  loaded: true
  currentPlaylistId: 1
  currentPlayingTrackId: null
  audioPlayer: {
    playing: false,
    autoPlay: false,
    progress: 0,
    volume: 0.5
    mute: false
  }
},
  facets: {
    currentPlaylist: {
      cursors: {
        id: ['currentPlaylistId']
        playlists: ['playlists']
      }
      get: (data) ->
        _.find(data.playlists, {id: data.id})
    }

    currentPlayingTrack: {
      facets: {
        currentPlaylist: 'currentPlaylist'
      }
      cursors: {
        id: ['currentPlayingTrackId']
      }
      get: (data) ->
        _.find(data.currentPlaylist.tracks, {id: data.id})
    }
  }
  autoCommit: false
  mixins: [ PureRenderMixin ]
)
