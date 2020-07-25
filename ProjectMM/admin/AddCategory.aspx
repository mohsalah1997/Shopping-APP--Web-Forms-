<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="ProjectMM.admin.AddCategory" %>

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
                width: 239px;
            }
            .auto-style3 {
                left: 0px;
                top: 0px;
                width: 200px;
            }
            .auto-style5 {
                left: 0px;
                top: 0px;
                width: 278px;
            }
            .auto-style7 {
                left: 0px;
                top: 0px;
                width: 235px;
            }
            .auto-style8 {
                left: 0px;
                top: 0px;
                width: 234px;
            }
            .auto-style9 {
                left: 0px;
                top: 0px;
                width: 205px;
            }
            .auto-style10 {
                left: 0px;
                top: 0px;
                width: 233px;
            }
            .auto-style11 {
                left: 0px;
                top: 0px;
                width: 204px;
            }
            .auto-style12 {
                left: 0px;
                top: 0px;
                width: 233px;
                margin-right: 103px;
            }
            .auto-style13 {
                left: 0px;
                top: 0px;
            }
            .auto-style14 {
                left: 0px;
                top: 0px;
                width: 197px;
            }
            .auto-style16 {
                left: 0px;
                top: 0px;
                width: 236px;
            }
            .auto-style17 {
                left: 424px;
                top: -412px;
                width: 700px;
                margin-left: 37;
            }
            .auto-style18 {
                left: 0px;
                top: 0px;
                width: 206px;
            }
            .auto-style19 {
                left: 425px;
                top: -430px;
                width: 795px;
            }
            .auto-style20 {
                font-size: large;
            }
            .auto-style21 {
                left: 424px;
                top: -412px;
                width: 700px;
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
                <li class="auto-style5"> <a href="#" data-toggle="collapse" data-target="#userMenu">Settings <i class="glyphicon glyphicon-chevron-down"></i></a>
                    <ul class="nav nav-stacked collapse in" id="userMenu" style="width: 241px">
                        <li class="auto-style7"><a href="ShowMessages.aspx" class="auto-style9"><i class="glyphicon glyphicon-envelope"></i> Messages <span class="badge badge-info">4</span></a></li>
                        <li class="auto-style8"><a href="EditUsers.aspx" class="auto-style9"><i class="glyphicon glyphicon-cog"></i> Edit Users</a></li>
                        <li class="auto-style10"><a href="AddCategory.aspx" class="auto-style11"><i class="glyphicon glyphicon-comment"></i> Add Category</a></li>
                        <li class="auto-style12"><a href="EditCategory.aspx"><i class="glyphicon glyphicon-user"></i> Edit Category</a></li>
                        <li class="auto-style10"><a href="AddProduct.aspx" class="auto-style3"><i class="glyphicon glyphicon-flag"></i> Add Product</a></li>
                        <li class="auto-style13"><a href="EditProduct.aspx.aspx" class="auto-style14"><i class="glyphicon glyphicon-exclamation-sign"></i> Edit Product</a></li>
                        <li class="auto-style8"><a href="ShowUserSales.aspx" class="auto-style14"><i class="glyphicon glyphicon-flag"></i> User Sales</a></li>
                        <li class="auto-style16"><a href="AddNews.aspx" class="auto-style18"><i class="glyphicon glyphicon-flag"></i> Add News</a></li>
                        <li class="auto-style1"><a href="EditNews.aspx" class="auto-style18"><i class="glyphicon glyphicon-flag"></i> Edit News</a></li>
                        
                    </ul>
                </li>      
                <li class="auto-style19">
                    <br />
                    <span class="auto-style20"><strong>Add Category</strong></span></li>
                <li class="auto-style21">
                    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="CId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" Height="101px" Width="250px">
                        <EditItemTemplate>
                            CId:
                            <asp:Label ID="CIdLabel1" runat="server" Text='<%# Eval("CId") %>' />
                            <br />
                            Cname:
                            <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            Cname:
                            <asp:TextBox ID="CnameTextBox" runat="server" Text='<%# Bind("Cname") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            CId:
                            <asp:Label ID="CIdLabel" runat="server" Text='<%# Eval("CId") %>' />
                            <br />
                            Cname:
                            <asp:Label ID="CnameLabel" runat="server" Text='<%# Bind("Cname") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" Visible="False" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:FormView>
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
                    <br />
                    <span class="auto-style20"><strong>To view All Category</strong></span></li>
                <li class="auto-style17">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="CId" DataSourceID="SqlDataSource1" ForeColor="Black" Height="111px" Width="250px">
                        <Columns>
                            <asp:BoundField DataField="CId" HeaderText="CId" InsertVisible="False" ReadOnly="True" SortExpression="CId" />
                            <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </li>
            </ul>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/scripts.js"></script>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
