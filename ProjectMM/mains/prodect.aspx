<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prodect.aspx.cs" Inherits="ProjectMM.mains.prodect" %>

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
             <!--   <a href="index.html"><img src="img/logo.png" width="80" alt="Logo"></a>-->
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
                <li><a href="prodect.aspx">prodect</a> <i class="ion-ios-circle-filled color"></i></li>
                 <li><a href="VS.aspx">Comparison</a></li>
                <li><a href="profile.aspx">detail</a></li>
                <li><a href="contact.aspx">contact me</a></li>
             <!--    <li><a href="Alpum.aspx">Album</a></li> -->
               <!--       <li><a href="/log/log.aspx">logout</a></li> -->

               <asp:Button ID="ButtonLog" class="btn btn-box" runat="server" OnClick="ButtonLog_Click"  Text="Logout" /> 



             
            </ul>
        </nav>
        <!-- end nav -->
    </div>

    <!-- top bar -->
    <div class="top-bar">
        <h1>products</h1>
        <p><a href="main.aspx">Home</a> / products</p>
    </div>
    <!-- end top bar -->

    <!-- main container -->
    <div class="main-container portfolio-inner clearfix">
        <!-- portfolio div -->
        <div class="portfolio-div">
            <div class="portfolio">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CId" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
               <Columns>
                   <asp:CommandField ShowSelectButton="True" ButtonType="Button">
                       <ControlStyle BorderStyle="Groove"></ControlStyle>
                   </asp:CommandField>
                   <asp:BoundField DataField="CId" HeaderText="CId" ReadOnly="True" InsertVisible="False" SortExpression="CId" Visible="False"></asp:BoundField>
                   <asp:BoundField DataField="Cname" HeaderText="Category Name" SortExpression="Cname"></asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>

               <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>

               <PagerStyle HorizontalAlign="Right" BackColor="White" ForeColor="Black"></PagerStyle>

               <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

               <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

               <SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>

               <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

               <SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
           </asp:GridView>
                <br />
                <br />
                <br />
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="PId" DataSourceID="SqlDataSource3">
               <Columns>
                   <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" InsertVisible="False" SortExpression="PId" Visible="False"></asp:BoundField>
                   <asp:BoundField DataField="CId" HeaderText="CId" SortExpression="CId" Visible="False"></asp:BoundField>
                   <asp:BoundField DataField="Pname" HeaderText="Product Name" SortExpression="Pname"></asp:BoundField>
                   <asp:BoundField DataField="Pdetails" HeaderText="details" SortExpression="Pdetails"></asp:BoundField>
                   <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" DataFormatString="{0:c}"></asp:BoundField>
                   <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\Images\{0}" HeaderText="Image">
                       <ControlStyle Height="250px" Width="250px"></ControlStyle>
                   </asp:ImageField>

               </Columns>
           </asp:GridView>

           <!-- footer -->
           <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Prodect] WHERE ([CId] = @CId)">
               <SelectParameters>
                   <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="CId" Type="Int32"></asp:ControlParameter>
               </SelectParameters>
           </asp:SqlDataSource>
           <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Cat]"></asp:SqlDataSource>
           <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
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
