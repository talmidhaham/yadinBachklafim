<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Next.aspx.cs" Inherits="WebApplication4.Next" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style>
        body {
            background-image: url(https://img.techpowerup.org/200213/wall-wallpaper-concrete-colored-painted-textured-concept-53876-31799.jpg);
            background-repeat: no-repeat;
            background-position: center;
            background-position: center;
            background-size: cover;
            background-attachment: fixed;
        }

        img{
             display: none;
             float:left;
    }        
    </style>
 
    <script type="text/javascript">
        var indStr = '<%= prevValues %>';

        var ImgArr = indStr.split(';');
       
        $(function myfunction() {

            for (var i = 0; i < ImgArr.length; i++) {

                $('[ImgVal=' + ImgArr[i] + ']').show();
            }


        });

        

    </script>



    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <img src="https://img.techpowerup.org/200213/02-li.jpg" ImgVal="1" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/03-li.jpg" ImgVal="2" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/04-li.jpg" ImgVal="3" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/05-li.jpg" ImgVal="4" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/06-li.jpg" ImgVal="5" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/07-li.jpg" ImgVal="6" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/08-li.jpg" ImgVal="7" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/09-li.jpg" ImgVal="8" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/10-li.jpg" ImgVal="9" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/11-li.jpg" ImgVal="10" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/12-li.jpg" ImgVal="11" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/13-li.jpg" ImgVal="12" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/14-li.jpg" ImgVal="13" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/15-li.jpg" ImgVal="14" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/16-li.jpg" ImgVal="15" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/17-li.jpg" ImgVal="16" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/18-li.jpg" ImgVal="17" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/19-li.jpg" ImgVal="18" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/20-li.jpg" ImgVal="19" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/21-li.jpg" ImgVal="20" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/22-li.jpg" ImgVal="21" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/23-li.jpg" ImgVal="22" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/24-li.jpg" ImgVal="23" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/25-li.jpg" ImgVal="24" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/26-li.jpg" ImgVal="25" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/27-li.jpg" ImgVal="26" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/28-li.jpg" ImgVal="27" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/29-li.jpg" ImgVal="28" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/30-li.jpg" ImgVal="29" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/31-li.jpg" ImgVal="30" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/32-li.jpg" ImgVal="31" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/33-li.jpg" ImgVal="32" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/34-li.jpg" ImgVal="33" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/35-li.jpg" ImgVal="34" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/36-li.jpg" ImgVal="35" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/37-li.jpg" ImgVal="36" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/38-li.jpg" ImgVal="37" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/39-li.jpg" ImgVal="38" width="300" height="240"></img>
    <br />
    <h1>כדי לקבל את התמצית המתאימה התקשר/י לטלפון </h1>
    <h1>0000</h1>
    <h1>או שלח/י הודעה למייל</h1>
    <h1>gmail</h1>
    <h1>עם המספרים</h1>

    
</asp:Content>