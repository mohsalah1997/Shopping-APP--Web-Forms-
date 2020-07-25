<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNews.aspx.cs" Inherits="ProjectMM.admin.AddNews" %>

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
             left: 368px;
             top: -409px;
         }
         .auto-style2 {
             width: 138%;
             height: 160px;
         }
         .auto-style3 {
             font-size: large;
         }
         .auto-style4 {
             font-size: large;
             text-align: center;
         }
         .auto-style5 {
             left: 406px;
             top: -423px;
             font-size: large;
             text-align: center;
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
            <asp:Label ID="Label2" runat="server" ForeColor="White" ></asp:Label>
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

            <ul class="nav nav-stacked" style="width: 248px">
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
                <li class="auto-style5">Add News<br />
                </li>
                <li class="auto-style1">
                    <table class="auto-style2">
                        <tr>
                            <td class="auto-style4">tittle:&nbsp;</td>
                            <td class="text-center">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">detalis</td>
                            <td class="text-center">
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">pic</td>
                            <td class="text-center">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="2">
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                                <br />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
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
                </li>
            </ul>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
    </form>
</body>
</html>
