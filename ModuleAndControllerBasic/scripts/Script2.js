/// <reference path="angular.js" />


//second module and third controller in same line, reducing code 
var myAnotherApppp = angular.module("myAnotherModule", []).controller("myThirdController", function ($scope) {
    var country = {
        name: "Bangladesh",
        capital: "Dhaka",
        flag: "Images/flag.gif"
    };
    $scope.country = country;
});