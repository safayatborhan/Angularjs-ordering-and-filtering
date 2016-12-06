<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="filtering.aspx.cs" Inherits="ModuleAndControllerBasic.filtering" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/filtering.js"></script>
    <link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div ng-app="myModule">
        <div ng-controller="myController">
            Rows to display : <input type="number" step="1" min="0" max="5" ng-model="rowLimit" />
            <br /><br />
            Hide city : <input type="checkbox" ng-model="hideCity" />
            <br /><br />
            Order by : <select ng-model="sortColumn">
                            <option value="name">Name ASC</option>
                            <option value="gender">Gender ASC</option>
                            <option value="dataOfBirth">Date of birth ASC</option>
                            <option value="-salary">Salary DESC</option>
                       </select>
            <br /><br />
            Search : <input type="text" placeholder="Employee search" ng-model="searchText.name" />  <%--here .name is used to search from only the name, if you don't want to filter only name, just use the searchText--%>
            <br /><br />
            <input type="text" placeholder="Search name" ng-model="searchText.name" />
            <input type="text" placeholder="Search city" ng-model="searchText.city" />
            <input type="checkbox" ng-model="exactMatch" />Exact match
            <br /><br />
            <table style="border:inset">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Date of birth</th>
                        <th>Gender</th>
                        <th>Salary(number)</th>
                        <th>Salary(currency) </th>
                        <th ng-hide="hideCity">City </th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="employee in employees | limitTo : rowLimit | orderBy : sortColumn | filter : searchText : exactMatch">
                        <td>{{ employee.name }}</td>
                        <td>{{ employee.dateOfBirth | date : "dd/MM/yyyy" }}</td>
                        <td>{{ employee.gender | lowercase }}</td>
                        <td>{{ employee.salary | number : 2 }}</td>
                        <td>{{ employee.salary | currency : "৳" : 1 }}</td>
                        <td ng-hide="hideCity">{{ employee.city }}</td>
                    </tr>
                </tbody>
            </table>


            <%--here with header click sorting functionality--%>
            <br /><br /><br />
            <table style="border:inset">
                <thead>
                    <tr>
                        <th ng-click="sortData('name')">Name<div ng-class="getSortClass('name')"></div>
                        </th>
                        <th ng-click="sortData('dateOfBirth')">Date of birth<div ng-class="getSortClass('dateOfBirth')"></div>
                        </th>
                        <th ng-click="sortData('gender')">Gender<div ng-class="getSortClass('gender')"></div>
                        </th>
                        <th ng-click="sortData('salary')">Salary(number)<div ng-class="getSortClass('salary')"></div>
                        </th>
                        <th ng-click="sortData('salary')">Salary(currency)<div ng-class="getSortClass('salary')"></div>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="employee in employees | orderBy : sortColumn1 : reverseSort">
                        <td>{{ employee.name | uppercase }}</td>
                        <td>{{ employee.dateOfBirth | date : "dd/MM/yyyy" }}</td>
                        <td>{{ employee.gender | lowercase }}</td>
                        <td>{{ employee.salary | number : 2 }}</td>
                        <td>{{ employee.salary | currency : "৳" : 1 }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
