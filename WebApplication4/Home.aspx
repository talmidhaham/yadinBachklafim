<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication4.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style>
        img {
            opacity: 1.0;
            filter: alpha(opacity=50);
            height: 163px;
            width: 368px;
            margin-left: 0px;
            margin-top: 68px;
            margin-bottom: 0px;
            margin-right: 44px;
            float: right;
        }

        body {
            background-image: url(https://img.techpowerup.org/200213/wall-wallpaper-concrete-colored-painted-textured-concept-53876-31799.jpg);
            background-repeat: no-repeat;
            background-position: center;
            background-position: center;
            background-size: cover;
            background-attachment: fixed;
        }

                .blink {
          animation: blinker 2s step-start infinite;
        }

            @keyframes blinker {
              50% {
                opacity: 0;
              }
            }

            .square_btn{
    display: inline-block;
    padding: 7px 20px;
	border-radius: 25px;
    text-decoration: none;
    color: #FFF;
    background-image: -webkit-linear-gradient(45deg, #FFC107 0%, #ff8b5f 100%);
    background-image: linear-gradient(45deg, #FFC107 0%, #ff8b5f 100%);
    transition: .4s;
    font-size:x-large;
}

                        .square_btn2{
    display: inline-block;
    padding: 7px 20px;
	border-radius: 25px;
    text-decoration: none;
    color: #FFF;
    background-image: -webkit-linear-gradient(45deg, #FFC107 0%, #ff8b5f 100%);
    background-image: linear-gradient(45deg, #FFC107 0%, #ff8b5f 100%);
    transition: .4s;
    font-size:xx-large;
}

            .content {
  max-width: 1000px;
  margin: auto;
  padding: 10px;
}



label {
    text-align:right;
        color: yellow;
    font-size: x-large;
}


span {
    text-align:right;
    color:red;
    font-size:large;
}

body{
  font-family: Arial, Sans;
  margin: 0;
} 

.wrapper{
  position: absolute;
  top: 50%;
  left: 50%;
  width: 300px;
  text-align:center;
  transform: translateX(-50%);
}

.spanner{
  position:absolute;
  top: 50%;
  left: 0;
  background: #2a2a2a55;
  width: 100%;
  display:block;
  text-align:center;
  height: 300px;
  color: #FFF;
  transform: translateY(-50%);
  z-index: 1000;
  visibility: hidden;
}

.overlay{
  position: fixed;
	width: 100%;
	height: 100%;
  background: rgba(0,0,0,0.5);
  visibility: hidden;
}

.loader,
.loader:before,
.loader:after {
  border-radius: 50%;
  width: 2.5em;
  height: 2.5em;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  -webkit-animation: load7 1.8s infinite ease-in-out;
  animation: load7 1.8s infinite ease-in-out;
}
.loader {
  color: #ffffff;
  font-size: 10px;
  margin: 80px auto;
  position: relative;
  text-indent: -9999em;
  -webkit-transform: translateZ(0);
  -ms-transform: translateZ(0);
  transform: translateZ(0);
  -webkit-animation-delay: -0.16s;
  animation-delay: -0.16s;
}
.loader:before,
.loader:after {
  content: '';
  position: absolute;
  top: 0;
}
.loader:before {
  left: -3.5em;
  -webkit-animation-delay: -0.32s;
  animation-delay: -0.32s;
}
.loader:after {
  left: 3.5em;
}
@-webkit-keyframes load7 {
  0%,
  80%,
  100% {
    box-shadow: 0 2.5em 0 -1.3em;
  }
  40% {
    box-shadow: 0 2.5em 0 0;
  }
}
@keyframes load7 {
  0%,
  80%,
  100% {
    box-shadow: 0 2.5em 0 -1.3em;
  }
  40% {
    box-shadow: 0 2.5em 0 0;
  }
}

.show{
  visibility: visible;
}

.spanner, .overlay{
	opacity: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	transition: all 0.3s;
}

.spanner.show, .overlay.show {
	opacity: 1
}
    </style>

    <script type="text/javascript">
        var firstName = '<%= firstname.ClientID %>';

        var lastname = '<%= lastname.ClientID %>';

        var email = '<%= email.ClientID %>';

        var phone = '<%= phone.ClientID %>';

        var HdnMail = '<%= HdnMail.ClientID %>';

        var hidClientId = '<%= HiddenField1.ClientID %>';
        var Arr = [];
        var cnt = 0;
        var btnTotsaot = '<%= BtnHemcheh.UniqueID  %>';
        $(function myfunction() {


            $("#second").hide();

            $("#fade").modal({
                fadeDuration: 1000,
                fadeDelay: 0.50,
                escapeClose: false,
                clickClose: false,
                showClose: false
            });
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


            $.fn.shuffle = function () {
                var _self = this,
                    children = $.shuffle(this.children().get());
                $.each(children, function () {
                    _self.append(this)
                })
                return this;
            };

            $.shuffle = function (arr) {
                for (var j, x, i = arr.length; i; j = parseInt(Math.random() * i), x = arr[--i], arr[i] = arr[j], arr[j] = x);
                return arr;
            };

            var arr = $('img');
            $.each($.shuffle(arr), function (_, src) {
                //debugger;
                //$('<img />', {
                //    src: src
                //}).appendTo('#array')
                $("#array").append(src);
            })

            //$.ajax({
            //    type: "POST",
            //    url: "/mailHandler.ashx",
            //    data: "{'argument':+ d +}",
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //});
        })






        function setValues() {
            var str = '';

            //if (Arr.length <= 0) {
            //    alert('נא לבחור לפחות תמונה אחת !!!');
            //    return;
            //}
            for (var i = 0; i < Arr.length; i++) {
                if (Arr[i] != undefined) {
                    str = str + Arr[i] + (i == (Arr.length - 1) ? '' : ';');
                }
            }

            if ((!str || 0 === str.length)) {
                                alert('נא לבחור לפחות תמונה אחת !!!');
                return;
            }

            $('#' + hidClientId).val(str);




            $("#first").hide();
            $("#second").show();


            $("#fade").modal({
                fadeDuration: 1000,
                fadeDelay: 0.50,
                escapeClose: false,
                clickClose: false,
                showClose: false
            });
        }


        function SubmitForm() {

            var str = '';
<%--            var firstName = '<%= firstname.ClientID %>';

            var lastname = '<%= lastname.ClientID %>';

            var email = '<%= email.ClientID %>';

            var phone = '<%= phone.ClientID %>';

            var HdnMail = '<%= HdnMail.ClientID %>';--%>
            str += $('#' + firstName).val() + ';';
            str += $('#' + lastname).val() + ';';
            str += $('#' + email).val() + ';';
            str += $('#' + phone).val();

            $('#' + HdnMail).val(str);

           // $('#' + btnTotsaot).trigger('click');

           // var button = document.getElementById('<%= BtnHemcheh.UniqueID %>');
            __doPostBack(btnTotsaot, 'BtnHemcheh_Click');
           // button.click();
           // document.getElementById(btnTotsaot).click();
        }

        function showLoading() {
            if (Page_ClientValidate()) {
                $("div.spanner").addClass("show");
                $("div.overlay").addClass("show");
                SubmitForm();
            }
        }



</script>
</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content" >
        <div >
    <h1 style="            text-align: center;
            font-size: -webkit-xxx-large;
            font-weight: 700;
            width: 100%">יש לבחור עד חמישה ציורים וללחוץ על כפתור  ה"המשך" שבתחתית העמוד</h1>
     </div>

        <div id="array" >

    <img src="Assets/Images/thumbnail/01-li.jpg" ImgVal="1" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/40-li.jpg" ImgVal="2" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/41-li.jpg" ImgVal="3" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/42-li.jpg" ImgVal="4" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/43-li.jpg" ImgVal="5" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/44-li433.jpg" ImgVal="6" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/45-li186.jpg" ImgVal="7" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/46-li.jpg" ImgVal="8" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/47-li.jpg" ImgVal="9" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/48-li.jpg" ImgVal="10" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/49-li.jpg" ImgVal="11" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/50-li.jpg" ImgVal="12" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/51-li.jpg" ImgVal="13" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/52-li.jpg" ImgVal="14" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/53-li.jpg" ImgVal="15" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/54-li.jpg" ImgVal="16" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/55-li.jpg" ImgVal="17" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/56-li.jpg" ImgVal="18" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/57-li.jpg" ImgVal="19" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/58-li.jpg" ImgVal="20" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/59-li.jpg" ImgVal="21" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/60-li.jpg" ImgVal="22" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/61-li.jpg" ImgVal="23" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/62-li.jpg" ImgVal="24" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/63-li.jpg" ImgVal="25" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/64-li.jpg" ImgVal="26" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/65-li.jpg" ImgVal="27" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/66-li.jpg" ImgVal="28" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/67-li.jpg" ImgVal="29" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/68-li.jpg" ImgVal="30" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/69-li.jpg" ImgVal="31" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/70-li.jpg" ImgVal="32" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/71-li.jpg" ImgVal="33" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/72-li.jpg" ImgVal="34" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/73-li.jpg" ImgVal="35" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/74-li.jpg" ImgVal="36" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/75-li.jpg" ImgVal="37" width="300" height="240"></img>
    <img src="Assets/Images/thumbnail/76-li.jpg" ImgVal="38" width="300" height="240"></img>


<%--    <img src="https://img.techpowerup.org/200213/01-li.jpg" ImgVal="1" width="300" height="240"></img>
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
    <img src="https://img.techpowerup.org/200213/76-li.jpg" ImgVal="38" width="300" height="240"></img>--%>
<%--    <a href="Next.aspx"><img src="http://www.interload.co.il/upload/8258755.png" /></a>--%>

            </div>
    <br />
    <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HiddenField ID="HdnMail" runat="server" />

        <asp:HiddenField ID="HdnMessage" runat="server" />



                        <div style="position: relative; float: right; top: 100px; margin-left: 100px;">
          <asp:Button style="display:none" ID="BtnHemcheh"  CssClass="square_btn2"  Text="קבל "  runat="server"  OnClick="BtnHemcheh_Click" /> 
<%--                                    <asp:Button   ID="BtnHemcheh" CssClass="square_btn2"   Text="קבל תוצאות"  runat="server"  OnClick="BtnHemcheh_Click" /> --%>
                                    <div  onclick="setValues()">
                    <a href="#" class="square_btn"  >המשך</a>
        </div>

            </div>

        <div style="height:500px;float:right;position:relative">

        </div>
        </div>

            <div class="overlay"></div>
<div class="spanner">
  <div class="loader"></div>
  <p style="font-size:xx-large;color:yellow">עוד רגע קטן וזה מגיע</p>
</div>
    <div id="fade" style="width:1200px; background-image:url(https://img.techpowerup.org/200213/wall-wallpaper-concrete-colored-painted-textured-concept-53876-31799.jpg)">

        <div id="first">
        <h1  style="text-align:right;font-size:x-large;font-weight:700;width:100%;"> 
            <p>
קלפי ציורים ומשפטים לתמציות פרחי באך<br /><br />
קלפים אלו מסייעים בידי המטפלים בתמציות פרחי באך לייצר הלימה וזיקה בין התמציות,
שראו  לנכון לתת למטופל<br /><br />
הקלפים מהווים כלי עזר גם בטיפול בילדים וגם באנשים עם מוגבלות ורבאלית, ומהווים גירוי לשיתוף פעולה<br /><br />
יש לבחור עד חמישה קלפים וללחוץ על כפתור "המשך". בעמוד הבא, לאחר מילוי פרטים, יתקבלו משפטים בהתאם לתמונות שנבחרו. מומלץ לקרוא אותם בקול<br />

                </p>

        </h1>
        <div class="blink">
                    <a href="#" class="square_btn"  rel="modal:close">התחל</a>
        </div>

    </div>
            <div id="second" style="direction:rtl;">

<div class="container" style="direction:rtl;display:grid">
        <h1  style="text-align:right;font-size:x-large;font-weight:700;width:100%;"> 
עוד צעד אחד קטן...והתוצאות בידכם
נא להזין את הפרטים הבאים:

        </h1>


    <label for="firstname">שם פרטי</label>
    <asp:TextBox runat="server" type="text" name="firstname" id="firstname" placeholder="John" />
    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="נא להזין שם" ValidationGroup="G1" ControlToValidate="firstname"></asp:RequiredFieldValidator>

    <label for="lastname">שם משפחה</label>
        <asp:TextBox runat="server" type="text" name="lastname" id="lastname" placeholder="Doe" />
    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="נא להזין שם" ValidationGroup="G1" ControlToValidate="lastname"></asp:RequiredFieldValidator>

    <label for="email">מייל</label>
    <asp:TextBox runat="server" type="email" name="email" id="email" placeholder="john@doe.com"/>
    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server" ErrorMessage="נא להזין מייל" ValidationGroup="G1" ControlToValidate="email"></asp:RequiredFieldValidator> 
    <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" ValidationGroup="G1"  ControlToValidate="email" runat="server" ErrorMessage="מייל לא תקין" ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"></asp:RegularExpressionValidator>


     <label for="email">טלפון</label>
    <asp:TextBox runat="server" type="email" name="phone" id="phone" />
    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" runat="server" ErrorMessage="נא להזין טלפון" ValidationGroup="G1" ControlToValidate="phone"></asp:RequiredFieldValidator> 
    <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator2" ValidationGroup="G1"  ControlToValidate="phone" runat="server" ErrorMessage="מס' לא תקין" ValidationExpression="^(?:(?:(\+?972|\(\+?972\)|\+?\(972\))(?:\s|\.|-)?([1-9]\d?))|(0[23489]{1})|(0[57]{1}[0-9]))(?:\s|\.|-)?([^0\D]{1}\d{2}(?:\s|\.|-)?\d{4})$"></asp:RegularExpressionValidator>

               <br />


    <asp:Button CssClass="square_btn2" ValidationGroup="G1" OnClientClick="showLoading()" UseSubmitBehavior="false" ID="Button1" runat="server" Text=" קבלו את המשפטים" />




    </div>
        </div>
        </div>


</asp:Content>
