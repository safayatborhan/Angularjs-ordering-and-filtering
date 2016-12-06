<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ModuleAndControllerBasic.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/Script.js"></script>
</head>
<body style="font-family: Arial">
    <form id="form1" runat="server">
        <div ng-app="myModule">
            <div ng-controller="myController">
                {{ message }}
            </div>
            <div ng-controller="myAnotherController">
                <br />
                <br />
                <div>
                    {{ employee.firstName }}
                </div>
                <div>
                    {{ employee.lastName }}
                </div>
                <div>
                    {{ employee.gender }}
                </div>
            </div>
        </div>                    
    </form>
</body>
</html>
