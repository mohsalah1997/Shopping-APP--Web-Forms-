<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="ProjectMM.admin.EditCategory" %>

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
             left: 0px;
             top: 0px;
             width: 237px;
         }
         .auto-style2 {
             left: 0px;
             top: 0px;
             width: 167px;
         }
         .auto-style3 {
             left: 0px;
             top: 0px;
         }
         .auto-style4 {
             left: 250px;
             top: -419px;
         }
         .auto-style5 {
             left: 259px;
             top: -389px;
             width: 891px;
             margin-top: 2px;
         }
         .auto-style6 {
             font-size: large;
         }
         .auto-style7 {
             margin-left: 0px;
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

            <ul class="nav nav-stacked">
                <li class="auto-style1"> <a href="#" data-toggle="collapse" data-target="#userMenu">Settings <i class="glyphicon glyphicon-chevron-down"></i></a>
                    <ul class="nav nav-stacked collapse in" id="userMenu">
                        <li><a href="ShowMessages.aspx"><i class="glyphicon glyphicon-envelope"></i> Messages <span class="badge badge-info">4</span></a></li>
                        <li><a href="EditUsers.aspx"><i class="glyphicon glyphicon-cog"></i> Edit Users</a></li>
                        <li><a href="AddCategory.aspx" class="auto-style3"><i class="glyphicon glyphicon-comment"></i> Add Category</a></li>
                        <li><a href="EditCategory.aspx"><i class="glyphicon glyphicon-user"></i> Edit Category</a></li>
                        <li><a href="AddProduct.aspx"><i class="glyphicon glyphicon-flag"></i> Add Product</a></li>
                        <li><a href="EditProduct.aspx.aspx"><i class="glyphicon glyphicon-exclamation-sign"></i> Edit Product</a></li>
                        <li><a href="ShowUserSales.aspx"><i class="glyphicon glyphicon-flag"></i> User Sales</a></li>
                        <li><a href="AddNews.aspx"><i class="glyphicon glyphicon-flag"></i> Add News</a></li>
                        <li><a href="EditNews.aspx"><i class="glyphicon glyphicon-flag"></i> Edit News</a></li>
                        
                        <li class="auto-style4">
                            <br />
                            <span class="auto-style6"><strong>&nbsp;&nbsp; Edit Category</strong></span></li>
                        
                    </ul>
                </li>      
                <li class="auto-style5">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="auto-style7" DataKeyNames="CId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" HeaderText="Edit" >
                            <FooterStyle BorderStyle="Groove" />
                            </asp:CommandField>
                            <asp:BoundField DataField="CId" HeaderText="CId" InsertVisible="False" ReadOnly="True" SortExpression="CId" />
                            <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cat] WHERE [CId] = @CId" InsertCommand="INSERT INTO [Cat] ([Cname]) VALUES (@Cname)" SelectCommand="SELECT * FROM [Cat]" UpdateCommand="UPDATE [Cat] SET [Cname] = @Cname WHERE [CId] = @CId">
                        <DeleteParameters>
                            <asp:Parameter Name="CId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Cname" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Cname" Type="String" />
                            <asp:Parameter Name="CId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                </li>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
            </ul>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
        </div>
        <h1>
            <br />
        </h1>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
