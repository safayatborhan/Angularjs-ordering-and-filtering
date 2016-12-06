/// <reference path="angular.js" />

var myApp = angular.module("myModule", []).controller("myController", function ($scope) {
    var employees = [
        { firstName: "Safayat", lastName: "Zisan", gender: "Male", designation: "Software Architect" },
        { firstName: "Mahfuz", lastName: "Shishir", gender: "Male", designation: "Software Architect" },
        { firstName: "Tariqul", lastName: "Islam", gender: "Male", designation: "Software Architect" },
        { firstName: "Saiful", lastName: "Raihan", gender: "Male", designation: "Software Architect" },
        { firstName: "Farhin", lastName: "Islam", gender: "Female", designation: "Marketing Officer" }
    ];
    $scope.employees = employees;
})