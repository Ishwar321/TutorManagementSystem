<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="TutorManagementSystem.Tutor_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
    
    <div class="container" style="box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
-webkit-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);
-moz-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
            <h1 class="jumbotron bg-primary text-white text-center">Tutor SignUp</h1>
                </div>
        </div>

         <div class="row">
     <div class="col-md-4">
         <asp:TextBox ID="NameTextBox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
        
         <br />
         <asp:TextBox ID="SurnameTextBox" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="SurnameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>

         <br />
         <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
             <asp:ListItem>Select Gender</asp:ListItem>
             <asp:ListItem>Male</asp:ListItem>
             <asp:ListItem>Female</asp:ListItem>
         </asp:DropDownList>
         <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate="GenderDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>

         <br />
         <asp:TextBox ID="AgeTextBox" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="AgeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
         <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age Should be Within 20 to 80" ControlToValidate="AgeTextBox" Display="Dynamic" ForeColor="Red" MaximumValue="80" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
         <br />
         <asp:TextBox ID="EmailTextBox" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="EmailTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator  ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ID="RegularExpressionValidator1" ControlToValidate="EmailTextBox" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
 runat="server" ErrorMessage="Email is Invalid"></asp:RegularExpressionValidator>
         <br />
 <asp:DropDownList ID="MaritalStatusDropDownList" CssClass="form-control" runat="server">
     <asp:ListItem>Select Status</asp:ListItem>
     <asp:ListItem>Single</asp:ListItem>
     <asp:ListItem>Married</asp:ListItem>
          <asp:ListItem>Engaged</asp:ListItem>
          <asp:ListItem>Divorced</asp:ListItem>
          <asp:ListItem>Seperated</asp:ListItem>
          <asp:ListItem>Other</asp:ListItem>


 </asp:DropDownList>
 <asp:RequiredFieldValidator InitialValue="Select Status" ControlToValidate="MaritalStatusDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator18" runat="server" ErrorMessage="Marital Status is Required"></asp:RequiredFieldValidator>

        
         </div>

         <div class="col-md-4">
           
 <asp:TextBox ID="CountryTextBox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ControlToValidate="CountryTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator6" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                <br />
              <asp:TextBox ID="CityTextBox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ControlToValidate="CityTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator7" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
   
             <br />
              <asp:TextBox ID="AddressTextBox" TextMode="MultiLine" Rows="6" Columns="20" CssClass="form-control" placeholder="Enter Address" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ControlToValidate="AddressTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
            
             <br />
            <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
    <asp:ListItem>Select Qualification</asp:ListItem>
    <asp:ListItem>Graduation</asp:ListItem>
    <asp:ListItem>Masters</asp:ListItem>
         <asp:ListItem>Mphil</asp:ListItem>
         <asp:ListItem>PHD</asp:ListItem>
         <asp:ListItem>Other</asp:ListItem>


</asp:DropDownList>
<asp:RequiredFieldValidator InitialValue="Select Qualification" ControlToValidate="QualificationDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator9" runat="server" ErrorMessage="Qualification is Required"></asp:RequiredFieldValidator>
    
            
    </div>

    <div class="col-md-4">
        <asp:TextBox ID="DegreeTextBox" CssClass="form-control" placeholder="Enter Degree" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ControlToValidate="DegreeTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator10" runat="server" ErrorMessage="Degree is Required"></asp:RequiredFieldValidator>
            <br />
             <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
    <asp:ListItem>Select Experience</asp:ListItem>
    <asp:ListItem>1 Year</asp:ListItem>
    <asp:ListItem>2 Years</asp:ListItem>
         <asp:ListItem>3 Years</asp:ListItem>
         <asp:ListItem>4 Years</asp:ListItem>
         <asp:ListItem>5+ Years</asp:ListItem>
                  <asp:ListItem>8+ Years</asp:ListItem>
                  <asp:ListItem>10+ Years</asp:ListItem>


</asp:DropDownList>
<asp:RequiredFieldValidator InitialValue="Select Experience" ControlToValidate="ExperienceDropDownList" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator19" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator>
         
        <br />
     <asp:TextBox ID="ContactTextBox" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="ContactTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator14" runat="server" ErrorMessage="Contact is Required"></asp:RequiredFieldValidator>

<br />
  
 <asp:TextBox ID="UsernameTextBox" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ControlToValidate="UsernameTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator15" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>

<br />
<asp:TextBox ID="PasswordTextBox" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ControlToValidate="PasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator16" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator 
                ID="RegularPasswordValidator" 
                runat="server" 
                ControlToValidate="PasswordTextBox" 
                ErrorMessage="Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character." 
                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                ForeColor="Red"
                SetFocusOnError="true"
                Display="Dynamic" />
<br />
<asp:TextBox ID="ConfirmPasswordTextBox" CssClass="form-control" placeholder="Re-Enter Password" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"  ID="RequiredFieldValidator17" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTextBox" ForeColor="Red" Display="Dynamic"  SetFocusOnError="true" ControlToCompare="PasswordTextBox" runat="server" ErrorMessage="Password and Confirm Password Must Be Same"></asp:CompareValidator>


    </div>

 </div>
        <br />
        <div class="row">

            <div class="col-md-6 mx-auto">
                <asp:Button ID="TutorSignUpButton" runat="server" Text="SignUp" CssClass="btn btn-primary btn-block" OnClick="TutorSignUpButton_Click" />
                <br />
            </div>

        </div>
     
               <div class="col-md-6 mx-auto">
    <div class="row justify-content-center">
        <a href="Student_Signup.aspx" class="btn btn-success m-2">SignUp As Student</a>
        <a href="Tutor_Signup.aspx" class="btn btn-info m-2">SignUp As Tutor</a>
    </div>
</div>

       

    </div>


    <br />
</asp:Content>
