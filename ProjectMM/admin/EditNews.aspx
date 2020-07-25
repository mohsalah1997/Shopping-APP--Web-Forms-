<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditNews.aspx.cs" Inherits="ProjectMM.admin.EditNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Bootstrap 3 Admin</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
     <style type="text/css">
         .auto-style1 {
             left: 345px;
             top: -399px;
         }
     </style>
</head>
<body>
    <form id="form1" runat="server">
         <!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
             <br />
            <asp:Label ID="Label1" runat="server" ForeColor="White" ></asp:Label>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
 
                <li><a href="/log/log.aspx"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
            </ul>
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /Header -->
        <!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">

            <ul class="nav nav-stacked" style="width: 246px">
                <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#userMenu">Settings <i class="glyphicon glyphicon-chevron-down"></i></a>
                    <ul class="nav nav-stacked collapse in" id="userMenu">
                        <li><a href="ShowMessages.aspx"><i class="glyphicon glyphicon-envelope"></i> Messages <span class="badge badge-info">4</span></a></li>
                        <li><a href="EditUsers.aspx"><i class="glyphicon glyphicon-cog"></i> Edit Users</a></li>
                        <li><a href="AddCategory.aspx"><i class="glyphicon glyphicon-comment"></i> Add Category</a></li>
                        <li><a href="EditCategory.aspx"><i class="glyphicon glyphicon-user"></i> Edit Category</a></li>
                        <li><a href="AddProduct.aspx"><i class="glyphicon glyphicon-flag"></i> Add Product</a></li>
                        <li><a href="EditProduct.aspx.aspx"><i class="glyphicon glyphicon-exclamation-sign"></i> Edit Product</a></li>
                        <li><a href="ShowUserSales.aspx"><i class="glyphicon glyphicon-flag"></i> User Sales</a></li>
                        <li><a href="AddNews.aspx"><i class="glyphicon glyphicon-flag"></i> Add News</a></li>
                        <li><a href="EditNews.aspx"><i class="glyphicon glyphicon-flag"></i> Edit News</a></li>
                        
                    </ul>
                </li>      
                <li class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="NId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="244px" Width="391px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="NId" HeaderText="NId" InsertVisible="False" ReadOnly="True" SortExpression="NId" />
                            <asp:BoundField DataField="Ntittle" HeaderText="Ntittle" SortExpression="Ntittle" />
                            <asp:BoundField DataField="Ndetalies" HeaderText="Ndetalies" SortExpression="Ndetalies" />
                            <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\Images\{0}" HeaderText="Image">
                                <ControlStyle Height="250px" Width="250px" />
                            </asp:ImageField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [News] WHERE [NId] = @NId" InsertCommand="INSERT INTO [News] ([Ntittle], [Ndetalies], [pic]) VALUES (@Ntittle, @Ndetalies, @pic)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [Ntittle] = @Ntittle, [Ndetalies] = @Ndetalies, [pic] = @pic WHERE [NId] = @NId">
                        <DeleteParameters>
                            <asp:Parameter Name="NId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Ntittle" Type="String" />
                            <asp:Parameter Name="Ndetalies" Type="String" />
                            <asp:Parameter Name="pic" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Ntittle" Type="String" />
                            <asp:Parameter Name="Ndetalies" Type="String" />
                            <asp:Parameter Name="pic" Type="String" />
                            <asp:Parameter Name="NId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </li>
            </ul>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
    </form>
</body>
</html>
