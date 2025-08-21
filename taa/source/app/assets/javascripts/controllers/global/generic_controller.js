(function(_, angular) {
  var app = angular.module('global/generic_controller', [
    'cyberhawk/builder'
  ]);

  var Methods = {
  };

  var options = {
    callback: function() {
      _.extend(this, Methods);
    }
  };

  app.controller('Global.GenericController', [
    'cyberhawk_builder', function(builder) {
      builder.buildAndRequest(this, options);

    }
  ]);
}(window._, window.angular));  
