<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProduct.aspx.aspx.cs" Inherits="ProjectMM.admin.EditProduct_aspx" %>

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
             left: 336px;
             top: -424px;
             width: 233px;
             font-size: large;
         }
         .auto-style2 {
             left: 273px;
             top: -424px;
             width: 601px;
             font-size: large;
         }
         .auto-style3 {
             font-size: large;
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

            <ul class="nav nav-stacked" style="width: 233px">
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
                <li class="auto-style1"><strong>Edit Products</strong></li>
                <li class="auto-style2">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style3" DataKeyNames="PId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="244px" Width="668px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True">
                            <FooterStyle BorderStyle="Groove" />
                            </asp:CommandField>
                            <asp:BoundField DataField="PId" HeaderText="PId" InsertVisible="False" ReadOnly="True" SortExpression="PId" />
                            <asp:BoundField DataField="CId" HeaderText="CId" SortExpression="CId" />
                            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                            <asp:BoundField DataField="Pdetails" HeaderText="Pdetails" SortExpression="Pdetails" />
                            <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="price" SortExpression="price" />
                            <asp:ImageField DataImageUrlField="pic" DataImageUrlFormatString="~\Images\{0}" HeaderText="imgae">
                                <ControlStyle Height="200px" Width="200px" />
                            </asp:ImageField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Prodect] WHERE [PId] = @PId" InsertCommand="INSERT INTO [Prodect] ([CId], [Pname], [Pdetails], [price], [pic]) VALUES (@CId, @Pname, @Pdetails, @price, @pic)" SelectCommand="SELECT * FROM [Prodect]" UpdateCommand="UPDATE [Prodect] SET [CId] = @CId, [Pname] = @Pname, [Pdetails] = @Pdetails, [price] = @price, [pic] = @pic WHERE [PId] = @PId">
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
                </li>
            </ul>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
    </form>
</body>
</html>
