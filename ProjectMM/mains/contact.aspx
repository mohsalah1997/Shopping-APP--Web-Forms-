<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="ProjectMM.mains.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Every Technology</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">


    <!-- modernizr -->
    <script src="js/modernizr.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <style type="text/css">
         .auto-style1 {
             margin-right: 5;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Preloader -->
    <div id="preloader">
        <div class="pre-container">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Message] WHERE [MId] = @MId" InsertCommand="INSERT INTO [Message] ([name], [email], [object], [message]) VALUES (@name, @email, @object, @message)" SelectCommand="SELECT * FROM [Message]" UpdateCommand="UPDATE [Message] SET [name] = @name, [email] = @email, [object] = @object, [message] = @message WHERE [MId] = @MId">
            <DeleteParameters>
                <asp:Parameter Name="MId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="object" Type="String" />
                <asp:Parameter Name="message" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="object" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="MId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <!-- end Preloader -->

    <div class="container-fluid">
        <!-- box-header -->
        <header class="box-header">
            <div class="box-logo">
                <asp:Label ID="LabelLog" runat="server"  OnDataBinding="Page_Load" ></asp:Label>
              <!--  <a href="index.html"><img src="img/logo.png" width="80" alt="Logo"></a>-->
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box-header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                 <li><a href="main.aspx">Intro</a> 
                <li><a href="about.aspx">About me</a></li>
                <li><a href="prodect.aspx">prodect</a></li>
                 <li><a href="VS.aspx">Comparison</a></li>
                <li><a href="profile.aspx">profile</a></li>
                <li><a href="contact.aspx">contact me</a><i class="ion-ios-circle-filled color"></i></li>
             <!--   <li><a href="Alpum.aspx">Album</a></li> -->
             <asp:Button ID="ButtonLog" class="btn btn-box" runat="server" OnClick="ButtonLog_Click"  Text="Logout" /> 



              
            </ul>
        </nav>
        <!-- end nav -->

    </div>

    <!-- top bar -->
    <div class="top-bar">
        <h1>contact Me</h1>
        <p><a href="main.aspx">Home</a> / Contact Me</p>
    </div>
    <!-- end top bar -->

    <!-- main-container -->
    <div class="container main-container">
        <div class="col-md-6">
            <form action="#" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="input-contact">
                            <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                           <!-- <input type="text" name="name">-->
                            <span>your name</span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-contact">
                            <asp:TextBox ID="TextBoxemail" runat="server"></asp:TextBox>
                           <!-- <input type="text" name="email">-->
                            <span>your email</span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <asp:TextBox ID="TextBoxobject" runat="server"></asp:TextBox>
                           <!-- <input type="text" name="object">-->
                            <span>object</span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="textarea-contact">
                            <asp:TextBox ID="TextBoxmessage" runat="server" CssClass="auto-style1" Height="199px" Width="554px"></asp:TextBox>
                            <!--<textarea name="message"></textarea>-->
                            <span>message</span>
                        </div>
                    </div>
                           <div>
                             <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <!--<a href="#" class="btn btn-box">Send</a>-->
                    </div>
                    <div class="col-md-12">
                        <asp:Button ID="Buttonsend" runat="server" Text="send" class="btn btn-box" OnClick="Buttonsend_Click"/>
                        <!--<a href="#" class="btn btn-box">Send</a>-->
                    </div>
                  
                </div>
            </form>
        </div>

        <div class="col-md-6">
            <h3 class="text-uppercase">contact me</h3>
            <h5>Send the message you want to send to Adman</h5>
            <div class="h-30"></div>
            <p>If you have any problem or want to report a mistake or want to take a discount on some products, send here the message you want to send that the admin read </p>
            <div class="contact-info">
                <p><i class="ion-android-call"></i> 00970592891653</p>
                <p><i class="ion-ios-email"></i> box@info.com</p>
            </div>
        </div>


    </div>
    <!-- end main-container -->

    <!-- footer -->
    <footer>
        <div class="container-fluid">
            <p class="copyright">© Box Portfolio 2016</p>
        </div>
    </footer>
    <!-- end footer -->

    <!-- back to top -->
    <a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
    <!-- end back to top -->



    <!-- jQuery -->
    <script src="js/jquery-2.1.1.js"></script>
    <!--  plugins -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/animated-headline.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>


    <!--  custom script -->
    <script src="js/custom.js"></script>
    
    <!-- google analytics  -->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-76796224-1', 'auto');
        ga('send', 'pageview');
    </script>
    </form>
</body>
</html>
