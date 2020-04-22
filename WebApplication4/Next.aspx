<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Next.aspx.cs" Inherits="WebApplication4.Next" %>

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



        img[ImgVal] {
            opacity: 1.0;
            filter: alpha(opacity=50);
            height: 163px;
            width: 368px;
            margin-left: 0px;
            margin-top: 68px;
            margin-bottom: 0px;
            margin-right: 44px;
            float: right;
            display:none;
        }


        p {
            color: yellow;
            font-size: 35px;
        }

        .content {
            max-width: 1000px;
            margin: auto;
            padding: 10px;
        }

        a[sug] {
            width: 40px;
        }

        ul.share-buttons {
            list-style: none;
            padding: 0;
            padding-right: 25px;
            float: right;
        }

ul.share-buttons li{
  display: inline;
}

ul.share-buttons .sr-only{
  position: absolute;
  clip: rect(1px 1px 1px 1px);
  clip: rect(1px, 1px, 1px, 1px);
  padding: 0;
  border: 0;
  height: 1px;
  width: 1px;
  overflow: hidden;
}
    </style>


 
    <script type="text/javascript">
        var indStr = '<%= prevValues %>';
        var messageId = '<%= HdnDetails.ClientID %>';

        var mailBody = '<%= HdnMessage.ClientID %>';

        var prevalueId = '<%= HdnPrevalues.ClientID %>';

        var mailCntId = '<%= HdnMailCnt.ClientID %>';

        var ImgArr = indStr.split(';');
       
        $(function myfunction() {
            var str = '';
            for (var i = 0; i < ImgArr.length; i++) {

                $('[ImgVal=' + ImgArr[i] + ']').show();

                if (ImgArr[i] != undefined) {
                    str = str + (parseInt(ImgArr[i]) + 50) + (i == (ImgArr.length - 1) ? '' : ' ; ');
                }

                $('#prgNumber').html(str);
            }



            if (parseInt($('#' + mailCntId).val()) > 0) {
                alert('ההודעה נשלחה בהצלחה');
               $('#' + mailCntId).val('0');
            } 

            $('#' + prevalueId).val(indStr);
            $('#' + mailBody).val($('#' + messageId).val() + 'numbers : ' + str);

             
            var WhatsappArr = $("a[social|='whatsapp']");

            for (var i = 0; i < WhatsappArr.length; i++) {
                var Newhref = $(WhatsappArr[i]).attr('href');
                $(WhatsappArr[i]).attr('href', encodeURI(Newhref + $('#' + mailBody).val() ));

            }

        });

        

    </script>



    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:HiddenField ID="HdnDetails" runat="server" />

    <asp:HiddenField ID="HdnMessage" runat="server" />

    <asp:HiddenField ID="HdnPrevalues" runat="server" />

    <asp:HiddenField ID="HdnMailCnt" runat="server" />

    <div class="content">

    <img src="Assets/ImagesNext/thumbnails/02-li.jpg" ImgVal="1" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/03-li.jpg" ImgVal="2" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/04-li.jpg" ImgVal="3" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/05-li.jpg" ImgVal="4" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/06-li.jpg" ImgVal="5" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/07-li.jpg" ImgVal="6" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/08-li.jpg" ImgVal="7" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/09-li.jpg" ImgVal="8" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/10-li.jpg" ImgVal="9" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/11-li.jpg" ImgVal="10" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/12-li.jpg" ImgVal="11" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/13-li.jpg" ImgVal="12" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/14-li.jpg" ImgVal="13" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/15-li.jpg" ImgVal="14" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/16-li.jpg" ImgVal="15" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/17-li.jpg" ImgVal="16" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/18-li.jpg" ImgVal="17" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/19-li.jpg" ImgVal="18" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/20-li.jpg" ImgVal="19" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/21-li.jpg" ImgVal="20" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/22-li.jpg" ImgVal="21" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/23-li.jpg" ImgVal="22" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/24-li.jpg" ImgVal="23" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/25-li.jpg" ImgVal="24" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/26-li.jpg" ImgVal="25" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/27-li.jpg" ImgVal="26" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/28-li.jpg" ImgVal="27" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/29-li.jpg" ImgVal="28" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/30-li.jpg" ImgVal="29" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/31-li.jpg" ImgVal="30" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/32-li.jpg" ImgVal="31" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/33-li.jpg" ImgVal="32" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/34-li.jpg" ImgVal="33" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/35-li.jpg" ImgVal="34" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/36-li.jpg" ImgVal="35" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/37-li.jpg" ImgVal="36" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/38-li.jpg" ImgVal="37" width="300" height="240"></img>
    <img src="Assets/ImagesNext/thumbnails/39-li.jpg" ImgVal="38" width="300" height="240"></img>



<%--            <img src="https://img.techpowerup.org/200213/02-li.jpg" ImgVal="1" width="300" height="240"></img>
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
    <img src="https://img.techpowerup.org/200213/39-li.jpg" ImgVal="38" width="300" height="240"></img>--%>
        </div>

    <br />

    <div style="text-align: right; position:relative;float:right;">
            <p style="margin-bottom:0px;font-size:45px" >כדי לקבל את התמצית המתאימה,  יש ללחוץ על שמו של אחד המטפלים המופיעים ברשימה</p>
        <table style="  border-collapse: collapse;
  border: 2px solid red;">
            <tr>

  <p style="margin-bottom:0px" ><a href="mailto:Yoelnd@walla.co.il">Yoelnd@walla.co.il</a> יואל שניאור - 052-620-0352</p>

            </tr>

            <tr>
        <ul class="share-buttons">
<li><a social="whatsapp"  sug="icone" href="https://api.whatsapp.com/send?phone=+972526200352&text=" title="שתף בוואטסאפ" target="_blank" ><img alt="Share on Facebook" src="Assets/flat_web_icon_set/color/pngguru.com.png" /></a></li>
<li><a sug="icone" href="https://www.facebook.com/yoelshneor/" title="בקר פייסבוק" target="_blank" "><img alt="Share on Facebook" src="Assets/flat_web_icon_set/color/Facebook.png" /></a></li>
  <li><a sug="icone" href="http://yoelsheneor.co.il/" target="_blank" title="בקר באתר"><img alt="Share on LinkedIn" src="Assets/flat_web_icon_set/color/www.png" /></a></li>
  <li><a sug="icone" href="tel:0526200352" target="_blank" title="תתקשר עלינו"><img alt="Save to Pinboard" src="Assets/flat_web_icon_set/color/phone-call-icon.png" /></a></li>
<%--  <li> <a  sug="icone" href="mailto:?subject=&body=:%20" target="_self" title="Send email"><img alt="Send email" src="Assets/flat_web_icon_set/color/Email.png" /></a></li>--%>
            <li> <asp:ImageButton ToolTip="שלך הודעה" style="padding-left: 15px;top: 12px;position:relative;" mail="Yoelnd@walla.co.il" OnClick="ImageButton1_Click" ID="ImageButton1" runat="server" ImageUrl="~/Assets/flat_web_icon_set/color/Email.png" /></li>

</ul>
            </tr>
        </table>

        <hr  style="display: block;
    height: 1px;
    border: 0;
    border-top: 1px solid #e9ec00;
    margin: 1em 0;
    padding: 0;float:right" width="50%" size="5" align="center" />


        <table>
            <tr>
    <p style="margin-bottom:0px" ><a href="mailto:shimind@gmail.com">shimind@gmail.com</a> שמעון צדוק כהן - 054-424-2655</p>

            </tr>

            <tr>
        <ul class="share-buttons">
<li><a  social="whatsapp"  sug="icone" href="https://api.whatsapp.com/send?phone=+972544242655&text=" title="שתף בוואטסאפ" target="_blank" ><img alt="Share on Facebook" src="Assets/flat_web_icon_set/color/pngguru.com.png" /></a></li>
  <li><a sug="icone" href="https://www.facebook.com/shimeon.cohen" title="בקר פייסבוק" target="_blank" "><img alt="Share on Facebook" src="Assets/flat_web_icon_set/color/Facebook.png" /></a></li>
    <li><a sug="icone" href="http://yoelsheneor.co.il/" target="_blank" title="בקר באתר"><img alt="Share on LinkedIn" src="Assets/flat_web_icon_set/color/www.png" /></a></li>
    <li><a sug="icone" href="tel:0544242655" target="_blank" title="תתקשר עלינו"><img alt="Save to Pinboard" src="Assets/flat_web_icon_set/color/phone-call-icon.png" /></a></li>
  <%--<li><a sug="icone" href="mailto:?subject=&body=:%20" target="_blank" title="Send email" onclick="window.open('mailto:?subject=' + encodeURIComponent(document.title) + '&body=' +  encodeURIComponent(document.URL)); return false;"><img alt="Send email" src="Assets/flat_web_icon_set/color/Email.png" /></a></li>--%>
            <li> <asp:ImageButton   ToolTip="שלך הודעה" style="padding-left: 15px;top: 12px;position:relative;" mail="shimind@gmail.com" OnClick="ImageButton1_Click" ID="ImageButton2" runat="server" ImageUrl="~/Assets/flat_web_icon_set/color/Email.png" /></li>
</ul>
            </tr>
        </table>


    <p style="margin-bottom:0px" >המספרים</p>
        <p style="margin-top:0px" id="prgNumber" >עם המספרים</p>
        <div style="height:1000px">

        </div>
    </div>



</asp:Content>