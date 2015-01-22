TournamentApp.controller("TournamentController", ["$scope", "$http", function ($scope, $http) {
    
  $scope.images = [];  
  $scope.error = {enabled: false, message: ""};

  $scope.show_error = function(message) {
    $scope.error.message = message;
    $scope.error.enabled = true;
  }

  $scope.hide_error = function() {
    $scope.error.enabled = false;
  }

  $scope.load_images = function() {
    $scope.hide_error();
    $http.get("http://pv.pop.umn.edu/images/").success(function(data){
        console.log(data);
    }).error(function(){
      $scope.show_error("Cannot load images. Please try again!");
    });
  }

  $scope.load_images();

}]);
