<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TwoWayDataBindingInATable.aspx.cs" Inherits="ModuleAndControllerBasic.TwoWayDataBindingInATable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/TwoWayDataBindingInATable.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div ng-app="myModule">
        <div ng-controller="myController">
            <table>
                <tr>
                    <th>
                        First Name : 
                    </th>
                    <td>
                        <asp:TextBox ID="TextBoxFirstName" runat="server" ng-model="employee.firstName"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>
                        Last Name : 
                    </th>
                    <td>
                        <asp:TextBox ID="TextBoxLastName" runat="server" ng-model="employee.lastName"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>
                        Gender : 
                    </th>
                    <td>
                        <asp:TextBox ID="TextBoxGender" runat="server" ng-model="employee.gender"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>
                        Designation : 
                    </th>
                    <td>
                        <asp:TextBox ID="TextBoxDesignation" runat="server" ng-model="employee.designation"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table>
                <tr>
                    <th>
                        First Name : 
                    </th>
                    <td>
                        {{employee.firstName}}
                    </td>
                </tr>
                <tr>
                    <th>
                        Last Name : 
                    </th>
                    <td>
                        {{employee.lastName}}
                    </td>
                </tr>
                <tr>
                    <th>
                        Gender : 
                    </th>
                    <td>
                        {{employee.gender}}
                    </td>
                </tr>
                <tr>
                    <th>
                        Designation : 
                    </th>
                    <td>
                        {{employee.designation}}
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
