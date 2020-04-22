<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication4.Home" %>


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
    </style>

    <script type="text/javascript">
        var hidClientId = '<%= HiddenField1.ClientID %>';
        var Arr = [];
        var cnt = 0;

        $(function myfunction() {
                $('img').click(function myfunction() {

        if ($(this).hasClass( "Imgover" )) {
            $(this).removeClass("Imgover")
            var ind = $(this).attr('ImgVal').valueOf();
            var Arrind = Arr.indexOf(ind);
            delete Arr[Arrind];
            cnt--;
        }
        else {
            if (cnt == 5) {
                alert('you choose the maximum number of pictures !!!');
                return;
            }
            $(this).addClass("Imgover");
            var ind = $(this).attr('ImgVal').valueOf();
            Arr.push(ind); 
            cnt++;
        }
    });
        })


        function setValues() {
            var str = '';
            for (var i = 0; i < Arr.length; i++) {
                if (Arr[i] != undefined) {
                    str = str + Arr[i] + (i == (Arr.length - 1) ? '' : ';');
                }
            }

            $('#' + hidClientId).val(str);
        }


</script>
</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <h1>בחר עד חמישה ציורים ולחץ על "הבא" בתחתית העמוד</h1>
    <img src="https://img.techpowerup.org/200213/01-li.jpg" ImgVal="1" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/40-li.jpg" ImgVal="2" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/41-li.jpg" ImgVal="3" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/42-li.jpg" ImgVal="4" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/43-li.jpg" ImgVal="5" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/44-li433.jpg" ImgVal="6" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/45-li186.jpg" ImgVal="7" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/46-li.jpg" ImgVal="8" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/47-li.jpg" ImgVal="9" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/48-li.jpg" ImgVal="10" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/49-li.jpg" ImgVal="11" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/50-li.jpg" ImgVal="12" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/51-li.jpg" ImgVal="13" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/52-li.jpg" ImgVal="14" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/53-li.jpg" ImgVal="15" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/54-li.jpg" ImgVal="16" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/55-li.jpg" ImgVal="17" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/56-li.jpg" ImgVal="18" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/57-li.jpg" ImgVal="19" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/58-li.jpg" ImgVal="20" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/59-li.jpg" ImgVal="21" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/60-li.jpg" ImgVal="22" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/61-li.jpg" ImgVal="23" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/62-li.jpg" ImgVal="24" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/63-li.jpg" ImgVal="25" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/64-li.jpg" ImgVal="26" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/65-li.jpg" ImgVal="27" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/66-li.jpg" ImgVal="28" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/67-li.jpg" ImgVal="29" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/68-li.jpg" ImgVal="30" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/69-li.jpg" ImgVal="31" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/70-li.jpg" ImgVal="32" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/71-li.jpg" ImgVal="33" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/72-li.jpg" ImgVal="34" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/73-li.jpg" ImgVal="35" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/74-li.jpg" ImgVal="36" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/75-li.jpg" ImgVal="37" width="300" height="240"></img>
    <img src="https://img.techpowerup.org/200213/76-li.jpg" ImgVal="38" width="300" height="240"></img>
<%--    <a href="Next.aspx"><img src="http://www.interload.co.il/upload/8258755.png" /></a>--%>
    <asp:ImageButton CssClass="ImgBtn" ImageUrl="https://img.techpowerup.org/200213/unnamed-2.png"  runat="server" OnClientClick="setValues()" OnClick="Unnamed1_Click" />
    <br />
    <asp:HiddenField ID="HiddenField1" runat="server" />
</asp:Content>
