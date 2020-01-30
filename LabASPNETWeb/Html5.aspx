<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Html5.aspx.cs" Inherits="LabASPNETWeb.Html5" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        var listaAudios = ["1.mp3", "2.mp3", "3.mp3"];
        var posAudio = -1;
        
        function sigAudio(){
           if (posAudio < listaAudios.length - 1){
               posAudio++;
               document.getElementById("reproductor").setAttribute("src", "../../audio/" + listaAudios[posAudio]); 
           }
        }
        
        function antAudio(){
           if (posAudio > 0){
               posAudio--;
               document.getElementById("reproductor").setAttribute("src", "../../audio/" + listaAudios[posAudio]); 
           }
        }
    </script>

    <center>
        <h1>AUDIO EN HTML5</h1>
        <audio controls id="reproductor" preload>
            <source src="../../audio/1.mp3" type="audio/mp3">
            <p>Tu navegador no implementa el elemento audio</p>
        </audio>
        <br>
        <input type="button" value="playAnterior" onclick="antAudio()"/>
        <input type="button" value="playSiguiente" onclick="sigAudio()" />
    </center>
</asp:Content>
