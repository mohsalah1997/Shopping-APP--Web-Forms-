﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowUserSales.aspx.cs" Inherits="ProjectMM.admin.ShowUserSales" %>

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
         .auto-style2 {
             font-size: large;
         }
         .auto-style3 {
             left: 300px;
             top: -431px;
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

            <ul class="nav nav-stacked" style="width: 242px">
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
                <li class="auto-style3">
                    <br />
                    <span class="auto-style2"><strong>User Sales</strong></span></li>
                <li class="auto-style3">
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" Height="273px" Width="389px" CellSpacing="2">
                        <Columns>
                            <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                            <asp:BoundField DataField="Pname" HeaderText="product name " SortExpression="Pname" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White"></RowStyle>

                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Sales.date, Prodect.Pname, Users.UserName FROM Sales INNER JOIN Users ON Sales.UId = Users.UId INNER JOIN Prodect ON Sales.PId = Prodect.PId"></asp:SqlDataSource>
                </li>
            </ul>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
    </form>
</body>
</html>
