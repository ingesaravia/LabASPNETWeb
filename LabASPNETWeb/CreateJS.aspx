<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateJS.aspx.cs" Inherits="LabASPNETWeb.CreateJS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="http://code.createjs.com/createjs-2013.09.25.min.js"></script>

	<script>
		var stage;

		function init()
		{
			stage = new createjs.Stage('mi_juego');
		}
	</script>
    <div onload="init()">
        <canvas id="mi_juego"></canvas>
    </div>
    
</asp:Content>
