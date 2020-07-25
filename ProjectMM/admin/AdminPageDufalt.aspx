<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPageDufalt.aspx.cs" Inherits="ProjectMM.admin.AdminPageDufalt" %>

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
                left: 438px;
                top: -338px;
                text-align: center;
            }
            .auto-style2 {
                font-size: xx-large;
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
               <!--  <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>-->
              
                <li><a href="/log/log.aspx"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>
             <!--   <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Logout</a></li>-->
                
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

            <ul class="nav nav-stacked" style="width: 265px">
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
                <li class="auto-style1"><span class="auto-style2">The Admin Controller</span><br />
                </li>
            </ul>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
    
    </form>
</body>
</html>
