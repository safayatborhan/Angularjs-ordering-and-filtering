/// <reference path="angular.js" />

//first module
var myApp = angular.module("myModule", []);

//first controller
var aController = function ($scope) {
    $scope.message = "Passing data from scope of a controller";
};

myApp.controller("myController", aController);

//second controller
var anotherController = function ($scope) {
    var employee = {
        firstName: "Safayat",
        lastName: "Zisan",
        gender: "Male"
    };
    $scope.employee = employee;
};

myApp.controller("myAnotherController", anotherController);


