<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TwoWayDataBinding.aspx.cs" Inherits="ModuleAndControllerBasic.TwoWayDataBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/TwoWayDataBinding.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div ng-app="myModule">
        <div ng-controller="myController">
            <asp:TextBox ID="TextBox1" runat="server" ng-model="message"></asp:TextBox>
            <br /><br />
            {{ message }}
            <br /><br />
            <asp:TextBox ID="TextBox2" runat="server" ng-model="greeting"></asp:TextBox>
            <br /><br />
            {{ greeting }}
        </div>
    </div>
    </form>
</body>
</html>
