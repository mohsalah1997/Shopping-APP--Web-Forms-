<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailsprodect.aspx.cs" Inherits="ProjectMM.mains.detailsprodect" %>

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
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
               <!-- <a href="index.html"><img src="img/logo.png" width="80" alt="Logo"></a>-->
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
                <li><a href="contact.aspx">contact me</a></li>
                <!--     <li><a href="Alpum.aspx">Album</a></li> -->
               <!--       <li><a href="/log/log.aspx">logout</a></li> -->

              <asp:Button ID="ButtonLog"  OnClick="ButtonLog_Click" class="btn btn-box" runat="server"  Text="Logout" /> 

                       



                
            </ul>
        </nav>
        <!-- end nav -->
    </div>
    
    <!-- top-bar -->
    <div class="top-bar">
        <h1>project title</h1>
           <p><a href="main.aspx">Home</a> / detailes</p>
    </div>
    <!-- end top-bar -->
       
        <asp:DetailsView ID="DetailsView1" runat="server" Height="270px" Width="549px" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="PId" HeaderText="PId" InsertVisible="False" ReadOnly="True" SortExpression="PId" Visible="False" />
                <asp:BoundField DataField="CId" HeaderText="CId" SortExpression="CId" Visible="False" />
                <asp:BoundField DataField="Pname" HeaderText="Product Name" SortExpression="Pname" />
                <asp:BoundField DataField="Pdetails" HeaderText="details" SortExpression="Pdetails" />
                <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="price" SortExpression="price" />
                <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\Images\{0}" HeaderText="Image">
                    <ControlStyle Height="250px" Width="250px" />
                </asp:ImageField>
            </Fields>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>
        <asp:Label ID="Labelmassge" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" class="btn btn-box" Text="sales" OnClick="Button1_Click1" />
         

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Prodect] WHERE ([PId] = @PId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="PId" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
         

    <!-- footer -->
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Sales] WHERE [SId] = @SId" InsertCommand="INSERT INTO [Sales] ([PId], [UId], [date]) VALUES (@PId, @UId, @date)" SelectCommand="SELECT * FROM [Sales]" UpdateCommand="UPDATE [Sales] SET [PId] = @PId, [UId] = @UId, [date] = @date WHERE [SId] = @SId">
            <DeleteParameters>
                <asp:Parameter Name="SId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PId" Type="String" />
                <asp:Parameter Name="UId" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PId" Type="String" />
                <asp:Parameter Name="UId" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="SId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
