<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ModuleAndControllerBasic.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/Script2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div ng-app="myAnotherModule">
            <div ng-controller="myThirdController">
                <div>
                    Name :  {{ country.name }}                    
                </div>
                <div>
                    Capital : {{ country.capital }}
                </div>
                <div>
                    <img ng-src="{{ country.flag }}" alt="{{ country.name + ' flag' }}" style="height:100px; width:200px" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
