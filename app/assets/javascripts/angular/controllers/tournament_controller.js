TournamentApp.controller("TournamentController", ["$scope", "$http", function ($scope, $http) {
    
  $scope.photos = []; 
  $scope.selected = []; 
  $scope.round = 0;

  $scope.startRound = function() {
    if($scope.selected.length == 1) return $scope.saveLeader();
    $scope.round++;
    if($scope.selected.length == 0) return false;
    $scope.photos = $scope.selected.slice(0);
    $scope.selected = [];
  }

  $scope.saveLeader = function() {
    $http.post('/tournament/vote/', {path: $scope.selected[0]});
  }

  $scope.voteFor = function(image) {
    $scope.selected.push(image);
    $scope.photos.shift();
    $scope.photos.shift();
    if($scope.photos.length == 0) $scope.startRound();
  }

}]);
