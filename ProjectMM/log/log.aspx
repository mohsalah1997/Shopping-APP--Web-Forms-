<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="ProjectMM.log.log" %>

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
               <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-image.jpg" alt="sing up image"><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserName] = @UserName)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBoxName" Name="UserName" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            </asp:SqlDataSource>
                        </figure>
                        <a href="signup.aspx">Create an account</a><br />
                        <a href="/mains/main.aspx">back to home page</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign in</h2>
                        <form method="POST" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="TextBoxName" type="text" placeholder="Your Name" runat="server"></asp:TextBox>
                            
                            </div>
                            <div class="form-group">
                                
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="TextBoxPassword" type="password" placeholder="Password" runat="server"></asp:TextBox>
                               
                            </div>
                          <!--  <div class="form-group"> -->
                          <!--      <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" /> -->
                                <asp:CheckBox ID="CheckBox1"  type="checkbox"   runat="server" class="agree-term" />
                             
                           
                            <br />
                                <asp:Label ID="Label1" runat="server" class="label-agree-term" Text=""></asp:Label>
                           <!--     <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label> -->
                        <!--    </div> -->
                            <br />
                            <asp:Button ID="ButtonLogin" type="submit" class="form-submit" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                           
                        </form>
                   <!--     <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>-->
                    </div>
                </div>
            </div>
        </section>

    

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>

    </form>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
