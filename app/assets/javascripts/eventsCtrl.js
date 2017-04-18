(function() {
  "use strict";

  angular.module("app").controller("eventsCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/api/v1/events").then(function(response) {
        $scope.events = response.data;
        $scope.orderAttribute = "date";
        $scope.isOrderDescending = false;
      });
    };
    $scope.addEvent = function(inputTitle, inputDescription, inputLocation, inputStartTime, inputEndTime, inputDate) {
      var params = {
        title: inputTitle,
        description: inputDescription,
        location: inputLocation,
        start: inputStartTime,
        end: inputEndTime,
        date: inputDate
      };
      $http.post("/api/v1/events", params).then(function(response) {
        $scope.events.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
      $scope.events.push(params);
      $scope.newTitleText = '';
      $scope.newDescriptionText = '';
      $scope.newLocationText = '';
      $scope.newStartTimeText = '';
      $scope.newEndTimeText = '';
      $scope.newDateText = '';
    };
  });
})();