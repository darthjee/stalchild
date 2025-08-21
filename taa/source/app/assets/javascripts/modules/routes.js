(function(angular) {
  var module = angular.module('stalchild');

  module.config(['johtoProvider', function(provider) {
    provider.defaultConfig = {
      controller: 'Global.GenericController',
      controllerAs: 'gnc',
      templateBuilder: function(route, params) {
        return route + '?ajax=true';
      }
    };

    provider.configs = [{
      routes: ['/'],
      config: {
        controller: 'Home.Controller',
        controllerAs: 'hc'
      }
    }];
    provider.$get().bindRoutes();
  }]);
}(window.angular));

