angular
  .module 'ngLocalStorage', []
  .factory '$localStorage', [
    '$window'
    ($window) ->
      {
        set: (key, value) ->
          $window.localStorage[key] = JSON.stringify(value)
          return
        get: (key) ->
          JSON.parse $window.localStorage[key] or null
        delete: (key) ->
          $window.localStorage.removeItem key
          return

      }
  ]
