(function(_, angular, Global) {
  var app = angular.module('global/header_controller', [
    'cyberhawk/notifier',
    'binded_http',
    'cyberhawk/global_state'
  ]);

  function Controller(http, notifier, global_state) {
    this.http = http.bind(this);
    this.notifier = notifier;
    this.global_state = global_state;
  }

  app.controller('Global.HeaderController', [
    'binded_http', 'cyberhawk_notifier',
    'cyberhawk_global_state',
    Controller
  ]);

  Global.Controller = Controller;
}(window._, window.angular, window.Global));


