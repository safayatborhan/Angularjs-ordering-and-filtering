/// <reference path="angular.js" />

var myApp = angular.module("myModule", []).controller("myController", function ($scope) {
    var employee = {
        firstName: "Safayat",
        lastName: "Zisan",
        gender: "Male",
        designation: "Software Architect"
    };
    $scope.employee = employee;
});