<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VS.aspx.cs" Inherits="ProjectMM.mains.VS" %>

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
        <!-- box header -->
        <header class="box-header">
            <div class="box-logo">
            <asp:Label ID="Label1" runat="server"  OnDataBinding="Page_Load" ></asp:Label>
         <!-- <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/log/log.aspx" >log in</asp:HyperLink>-->
              <!--  <a href="/log/log.aspx"><img src="img/logo.png" width="80" alt="Logo"></a>-->
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                <li><a href="main.aspx">Intro</a> 
                <li><a href="about.aspx">About me</a></li>
                <li><a href="prodect.aspx">prodect</a></li>
                 <li><a href="VS.aspx">Comparison</a><i class="ion-ios-circle-filled color"></i></li>
                <li><a href="profile.aspx">profile</a></li>
                <li><a href="contact.aspx">contact me</a></li>
              <!--  <li><a href="Alpum.aspx">Album</a> -->
                    <br />
          <!--      <li><a href="/log/log.aspx">logout</a></li> -->

               <asp:Button ID="ButtonLog" OnClick="ButtonLog_Click"  class="btn btn-box" runat="server"  Text="Logout" /> 

            </ul>
        </nav>
        <!-- end nav -->

        <!-- box-intro -->
        <section class="box-intro">
            <div class="table-cell">
                <h1 class="box-headline letters rotate-2">
                    <span class="box-words-wrapper">
                        <b class="is-visible">Comparison.</b>
                        <b>&nbsp;Prodects.</b>
                        
                    </span>
		        </h1>
                
                <p><a href="main.aspx">Home</a> / Comparison</p>
            </div>

            <div class="mouse">
                <div class="scroll"></div>
            </div>
        </section>
        <!-- end box-intro -->
    </div>
        <div class="right" >
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource5" DataTextField="Cname" DataValueField="CId" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Cat]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Pname" DataValueField="PId" Height="41px" Width="184px" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Prodect] WHERE ([CId] = @CId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" PropertyName="SelectedValue" Name="CId" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Pname" DataValueField="PId" Height="41px" Width="180px" AutoPostBack="True"></asp:DropDownList>

            <asp:DetailsView ID="DetailsView1" runat="server" Height="85px" Width="434px" AutoGenerateRows="False" DataKeyNames="PId" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" InsertVisible="False" SortExpression="PId" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="CId" HeaderText="CId" SortExpression="CId" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="Pname" HeaderText="Product name" SortExpression="Pname"></asp:BoundField>
                    <asp:BoundField DataField="Pdetails" HeaderText="details" SortExpression="Pdetails"></asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" DataFormatString="{0:c}"></asp:BoundField>
                    <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\Images\{0}" HeaderText="Images">
                        <ControlStyle Height="250px" Width="250px"></ControlStyle>
                    </asp:ImageField>

                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#E3EAEB"></RowStyle>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Prodect] WHERE ([PId] = @PId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="PId" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView2" runat="server" Height="85px" Width="433px" AutoGenerateRows="False" DataKeyNames="PId" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True"></FieldHeaderStyle>
                <Fields>
                    <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" InsertVisible="False" SortExpression="PId" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="CId" HeaderText="CId" SortExpression="CId" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="Pname" HeaderText="Product name" SortExpression="Pname"></asp:BoundField>
                    <asp:BoundField DataField="Pdetails" HeaderText="details" SortExpression="Pdetails"></asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" DataFormatString="{0:c}"></asp:BoundField>
                    <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\Images\{0}" HeaderText="Images">
                        <ControlStyle Height="250px" Width="250px"></ControlStyle>
                    </asp:ImageField>

                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#E3EAEB"></RowStyle>
            </asp:DetailsView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Prodect] WHERE ([PId] = @PId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" PropertyName="SelectedValue" Name="PId" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Prodect] WHERE ([CId] = @CId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList3" PropertyName="SelectedValue" Name="CId" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>



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
