<%@ Page Title="HTML5" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Html5.aspx.cs" Inherits="LabASPNETWeb.Html5" %>

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
        <h1>VIDEO EN  HTML5</h1>
        <video width="200px" height="200px" controls>
            <source src="../../video/1.mp4" type="video/mp4" width="100px">
            <source src="../../video/2.mp4" type="video/mp4" width="100px">
            <p>Tu navegador no implementa el elemento <code>video</code>.</p>
        </video>
        
        <h1>AUDIO EN HTML5</h1>
        <audio controls id="reproductor" preload>
            <source src="../../audio/1.mp3" type="audio/mp3">
            <p>Tu navegador no implementa el elemento audio</p>
        </audio>
        <br>
        <input type="button" value="playAnterior" onclick="antAudio()"/>
        <input type="button" value="playSiguiente" onclick="sigAudio()" />

        <h1>ARCHIVOS EN HTML5</h1>
            <p>INPUT TYPE "FILE" SIN ETIQUETAS "FORM"</p>
        <input type="file" name="archivo"/>
        <input type="submit" value="Enviar"/>
        <br>
        <p>INPUT TYPE "FILE" CON ETIQUETAS "FORM"</p>
        <form method="post" action="">
            <input type="file" name="archivo"/>
            <input type="submit" value="Enviar"/>
        </form>
    </center>
</asp:Content>
