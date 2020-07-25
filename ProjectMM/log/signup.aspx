<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="ProjectMM.log.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">
         <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserName] = @UserName)" DeleteCommand="DELETE FROM [Users] WHERE [UId] = @UId" InsertCommand="INSERT INTO [Users] ([UserName], [Password], [UserType], [Email]) VALUES (@UserName, @Password, @UserType, @Email)" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [Password] = @Password, [UserType] = @UserType, [Email] = @Email WHERE [UId] = @UId">
                            <DeleteParameters>
                                <asp:Parameter Name="UId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UserName" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                                <asp:Parameter Name="UserType" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBoxUserName" Name="UserName" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="UserName" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                                <asp:Parameter Name="UserType" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="UId" Type="Int32" />
                            </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UId] = @UId" InsertCommand="INSERT INTO [Users] ([UserName], [Password], [UserType], [Email]) VALUES (@UserName, @Password, @UserType, @Email)" SelectCommand="SELECT * FROM [Users] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [Password] = @Password, [UserType] = @UserType, [Email] = @Email WHERE [UId] = @UId">
                                <DeleteParameters>
                                    <asp:Parameter Name="UId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="UserName" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="UserType" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TextBoxEmail" Name="Email" PropertyName="Text" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="UserName" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="UserType" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="UId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </h2>
                        <form method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="TextBoxUserName" type="text" placeholder="Your Name" runat="server"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox ID="TextBoxEmail" type="email" placeholder="Your Email" runat="server"></asp:TextBox>
                               
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="TextBoxPasswoed" type="password" placeholder="Password" runat="server"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <asp:TextBox ID="TextBoxRePasswoed" type="password" placeholder="Repeat your password" runat="server"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                
                                <asp:CheckBox ID="CheckBox1" class="agree-term"  type="checkbox" runat="server" />
                               <!-- <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>-->
                                 <asp:Label ID="Label1" runat="server" class="label-agree-term" Text=""></asp:Label>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="ButtonRegister"  type="submit" class="form-submit" runat="server" Text="Register" OnClick="ButtonRegister_Click" />
                                
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="log.aspx">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </form>
 <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
