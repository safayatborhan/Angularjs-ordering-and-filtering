<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nestedNgRepeater.aspx.cs" Inherits="ModuleAndControllerBasic.nestedNgRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/nestedNgRepeater.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div ng-app="myModule">
        <div ng-controller="myController">
            <ul>
                <li ng-repeat="country in countries">
                    {{ country.name }}
                    <ul>
                        <li ng-repeat="city in country.city">
                            {{ city.name }}
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    </form>
</body>
</html>
