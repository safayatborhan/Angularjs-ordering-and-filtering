<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ngRepeatProperties.aspx.cs" Inherits="ModuleAndControllerBasic.ngRepeatProperties" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/ngRepeatProperties.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div ng-app="myModule">
        <div ng-controller="myController">
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Gender</th>
                    <th>Designation</th>
                </tr>
                <tr ng-repeat="employee in employees">
                    <td>{{ employee.firstName }}</td>
                    <td>{{ employee.lastName }}</td>
                    <td>{{ employee.gender}}</td>
                    <td>{{ employee.designation}}</td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
