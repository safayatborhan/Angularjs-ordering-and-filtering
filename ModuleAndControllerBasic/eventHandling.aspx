<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eventHandling.aspx.cs" Inherits="ModuleAndControllerBasic.eventHandling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/angular.js"></script>
    <script src="scripts/eventHandling.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div ng-app="myModule">
        <div ng-controller="myController">
            <table style="border:dashed">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Likes</th>
                        <th>Dislikes</th>
                        <th>Likes/Dislikes</th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="technology in technologies">
                        <td>{{ technology.name }}</td>
                        <td>{{ technology.likes }}</td>
                        <td>{{ technology.dislikes }}</td>
                        <td>
                            <input type="button" value="Like" ng-click="incrementLikes(technology)" />
                            <input type="button" value="Dislike" ng-click="decrementLikes(technology)" />                            
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
