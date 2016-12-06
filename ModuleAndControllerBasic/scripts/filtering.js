/// <reference path="angular.js" />
var myApp = angular.module("myModule", []).controller("myController", function ($scope) {
    var employees = [
        { name: "Safayat Zisan", dateOfBirth: new Date("May 07,1994"), gender: "Male", salary: 100000, city: "Pabna" },
        { name: "Farhin Islam", dateOfBirth: new Date("April 12,1996"), gender: "Female", salary: 90000, city : "Tangail" },
        { name: "Mahfuz Shishir", dateOfBirth: new Date("January 1,2016"), gender: "Male", salary: 50000, city: "Kushtia" },
        { name: "Saiful Raihan", dateOfBirth: new Date("October 21,1993"), gender: "Male", salary: 40000, city: "B.Baria" },
        { name: "Torikul Islam", dateOfBirth: new Date("January 1,2016"), gender: "Male", salary: 30000, city: "Jamalpur" }
    ];
    $scope.employees = employees;    
    $scope.rowLimit = 3;
    $scope.sortColumn = "name";

    //for sorting with table header
    $scope.sortColumn1 = "name";
    $scope.reverseSort = false;
    $scope.sortData = function (column) {
        $scope.reverseSort = ($scope.sortColumn1 == column) ? !$scope.reverseSort : false;
        $scope.sortColumn1 = column;
    }

    $scope.getSortClass = function (column) {
        if ($scope.sortColumn1 == column) {
            return $scope.reverseSort ? 'arrowDown' : 'arrowUp';
        }
        return '';
    }
});