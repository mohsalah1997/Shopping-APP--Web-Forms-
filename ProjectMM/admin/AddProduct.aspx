<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="ProjectMM.admin.AddProduct" %>

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
            left: 277px;
            top: -427px;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            width: 183px;
        }
        .auto-style4 {
            left: 277px;
            top: -427px;
            width: 482px;
        }
        .auto-style5 {
            left: 0px;
            top: 0px;
            width: 231px;
        }
        .auto-style7 {
            height: 40px;
            text-align: center;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            width: 183px;
            font-size: medium;
        }
        .auto-style10 {
            left: 277px;
            top: -427px;
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
            width: 409px;
        }
        .auto-style12 {
            width: 409px;
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

            <ul class="nav nav-stacked" style="width: 239px">
                <li class="auto-style5"> <a href="#" data-toggle="collapse" data-target="#userMenu">Settings <i class="glyphicon glyphicon-chevron-down"></i></a>
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
                        
                        <li class="auto-style10"><strong><span class="auto-style2">Add Products</span></strong></li>
                        <li class="auto-style1"></li>
                        <li class="auto-style4">
                            <table align="center" border="1" class="nav-justified">
                                <tr>
                                    <td class="auto-style3"><span class="auto-style8"><strong>Category</strong></span>:<br />
                                        <br />
                                    </td>
                                    <td class="auto-style11">
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8" DataSourceID="SqlDataSource1" DataTextField="Cname" DataValueField="CId">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cat]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9"><strong>Product Name:<br />
                                        <br />
                                        </strong></td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBoxProductName" runat="server" CssClass="auto-style8" Height="26px" Width="135px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9"><strong>Details:<br />
                                        <br />
                                        </strong></td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBoxDetails" runat="server" CssClass="auto-style8" Height="54px" TextMode="MultiLine" Width="134px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9"><strong>Price:<br />
                                        <br />
                                        </strong></td>
                                    <td class="auto-style11">
                                        <asp:TextBox ID="TextBoxPrice" runat="server" CssClass="auto-style8"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9"><strong>Pic:<br />
                                        <br />
                                        </strong></td>
                                    <td class="auto-style11">
                                        <br />
                                        <div class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <div class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style8" />
                                            </div>
&nbsp;
                                        </div>
&nbsp;<br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-center" colspan="2">
                                        <br />
                                        <asp:Button ID="ButtonAdd" runat="server" CssClass="auto-style8" OnClick="ButtonAdd_Click" Text="Add" />
                                        <br />
                                        <asp:Label ID="LabelAdd" runat="server" CssClass="auto-style8"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Prodect] WHERE [PId] = @PId" InsertCommand="INSERT INTO [Prodect] ([CId], [Pname], [Pdetails], [price], [pic]) VALUES (@CId, @Pname, @Pdetails, @price, @pic)" SelectCommand="SELECT * FROM [Prodect]" UpdateCommand="UPDATE [Prodect] SET [CId] = @CId, [Pname] = @Pname, [Pdetails] = @Pdetails, [price] = @price, [pic] = @pic WHERE [PId] = @PId">
                                            <DeleteParameters>
                                                <asp:Parameter Name="PId" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="CId" Type="Int32" />
                                                <asp:Parameter Name="Pname" Type="String" />
                                                <asp:Parameter Name="Pdetails" Type="String" />
                                                <asp:Parameter Name="price" Type="String" />
                                                <asp:Parameter Name="pic" Type="String" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="CId" Type="Int32" />
                                                <asp:Parameter Name="Pname" Type="String" />
                                                <asp:Parameter Name="Pdetails" Type="String" />
                                                <asp:Parameter Name="price" Type="String" />
                                                <asp:Parameter Name="pic" Type="String" />
                                                <asp:Parameter Name="PId" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </li>
                        
                    </ul>
                </li>      
            </ul>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
    </form>
</body>
</html>
