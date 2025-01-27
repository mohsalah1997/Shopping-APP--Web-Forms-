﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="ProjectMM.mains.news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Every Technology</title>
    <link rel="icon" href="img/fav.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">

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
    </div>
    <!-- end Preloader -->

    <div class="container-fluid">
        <!-- box-header -->
        <header class="box-header">
            <div class="box-logo">
                <asp:Label ID="Label1" runat="server"  OnDataBinding="Page_Load" ></asp:Label>
               <!-- <a href="index.html"><img src="img/logo.png" width="80" alt="Logo"></a>-->
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
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
                <li><a href="contact.aspx">contact me</a></li>
              <!--  <li><a href="Alpum.aspx">Album</a></li> -->
                 <!--    <li><a href="/log/log.aspx">logout</a></li> -->

             <asp:Button ID="ButtonLog" class="btn btn-box" runat="server" OnClick="ButtonLog_Click"  Text="Logout" /> 
                    

            </ul>
        </nav>
        <!-- end nav -->
    </div>

    <!-- top bar -->
    <div class="top-bar">
        <h1>Details news</h1>
        <p><a href="main.aspx">Home</a> / news</p>
    </div>
    <!-- end top bar -->

    <asp:DetailsView ID="DetailsView1" runat="server" Height="291px" Width="664px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NId" DataSourceID="SqlDataSource2" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="NId" HeaderText="NId" InsertVisible="False" ReadOnly="True" SortExpression="NId" Visible="False" />
            <asp:BoundField DataField="Ntittle" HeaderText="tittle" SortExpression="Ntittle" />
            <asp:BoundField DataField="Ndetalies" HeaderText="detalies" SortExpression="Ndetalies" />
            <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\images\{0}" HeaderText="images">
            </asp:ImageField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
         </asp:DetailsView>
       


         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [News] WHERE ([NId] = @NId)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="NId" QueryStringField="id" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
       


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
