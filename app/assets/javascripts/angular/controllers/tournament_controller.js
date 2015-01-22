TournamentApp.controller("TournamentController", ["$scope", "$http", function ($scope, $http) {
    
  $scope.images = []; 
  $scope.selected = []; 
  $scope.round = 0;

  $scope.startRound = function() {
    if($scope.selected.length == 1) return $scope.saveLeader();
    $scope.round++;
    if($scope.selected.length == 0) return false;
    $scope.images = $scope.selected.slice(0);
    $scope.selected = [];
  }

  $scope.saveLeader = function() {
    $http.post('/tournament/vote/', {image: $scope.selected[0]});
  }

  $scope.voteFor = function(image) {
    $scope.selected.push(image);
    $scope.images.shift();
    $scope.images.shift();
    if($scope.images.length == 0) $scope.startRound();
  }

}]);
