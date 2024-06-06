<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="TutorManagementSystem.admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="~/dist/sweetalert2.min.css" rel="stylesheet"/>
    <script src="../dist/sweetalert2.min.js"></script>
    <style>
        body {
            background: url('../assets/images/background.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }
        .login-container {
            margin-top: 100px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 0px 0px 10px 0px #000;
            border-radius: 10px;
        }
        .login-header {
            margin-bottom: 30px;
        }
        .form-control {
            margin-bottom: 10px;
        }
        .full-width {
            width: 100%;
        }
        .background-overlay {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
    <div class="background-overlay"></div>
    <form id="form1" runat="server">
        <div class="container">

            <div class="row justify-content-center">

                <div class="col-md-4 login-container">

                    <div class="jumbotron bg-primary text-center text-white login-header">
                        <h2>Admin Login</h2>
                    </div>

                    <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="PasswordTxt" TextMode="Password" placeholder="Enter Password" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                    
                    <br />
                    <asp:Button ID="LoginBtn" runat="server" Text="Login" CssClass="btn btn-primary btn-block full-width" OnClick="LoginBtn_Click" />
                </div>

            </div>

        </div>
    </form>
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
