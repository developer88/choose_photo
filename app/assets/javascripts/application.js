//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require angularjs
//= require_self
//= require_tree ./angular

var TournamentApp = angular.module('TournamentApp', [], function () {});

TournamentApp.config(['$httpProvider', function ($httpProvider) {
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name="csrf-token"]').attr('content');
}]);
