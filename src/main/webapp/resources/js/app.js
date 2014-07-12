'use strict';

/* App Module */

angular.module('flightcat', ['flightServices']).
  config(['$routeProvider', function($routeProvider) {
  $routeProvider.
  //when('/flightList/:start/:end', {templateUrl: 'resources/partials/flight-list.html',  controller: FlightListCtrl}).
      when('/flightList', {templateUrl: 'resources/partials/flight-list.html',  controller: FlightListCtrl}).
      when('/description', {templateUrl: 'resources/partials/description.html'}).
      when('/dealsList', {templateUrl: 'resources/partials/deals-list.html'}).
      otherwise({redirectTo: '/description'});
}]);
