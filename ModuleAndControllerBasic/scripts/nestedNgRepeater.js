/// <reference path="angular.js" />

var myApp = angular.module("myModule", []).controller("myController", function ($scope) {
    var countries = [
        {
            name: "Bangladesh",
            city: [{ name: "Dhaka" }, { name: "Tangail" }, { name: "Pabna" }]
        },
        {
            name: "USA",
            city: [{ name: "Los Angeles" }, { name: "Chikago" }, { name: "New York" }]
        },
        {
            name: "India",
            city: [{ name: "Mumbai" }, { name: "Delhi" }, { name: "Chennai" }]
        }
    ];
    $scope.countries = countries;
});