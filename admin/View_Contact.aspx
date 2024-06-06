<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_dashboard.Master" AutoEventWireup="true" CodeBehind="View_Contact.aspx.cs" Inherits="TutorManagementSystem.admin.View_Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row" >

        <div class="col-md-12">

            <h1 class="jumbotron bg-dark text-white text-center " >VIEW CONTACT DETAILS</h1>

        </div>

    </div>
    
    <asp:GridView CssClass="table table-bordered table-hover table-striped table-dark " ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="ID">

                <ItemTemplate>
                    <asp:Label ID="LabelID" runat="server" Text='<%# Bind("id") %>'  ></asp:Label>
                </ItemTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="NAME">
                <ItemTemplate>
                    <asp:Label ID="LabelNAME" runat="server" Text='<%# Bind("name") %>'  ></asp:Label>
                </ItemTemplate>                                           
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EMAIL">
                <ItemTemplate>
    <asp:Label ID="LabelEMAIL" runat="server" Text='<%# Bind("email") %>'  ></asp:Label>
</ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SUBJECT">
                <ItemTemplate>
    <asp:Label ID="LabelSUBJECT" runat="server" Text='<%# Bind("subject") %>'  ></asp:Label>
</ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MESSAGE">
                <ItemTemplate>
    <asp:Label ID="LabelMESSAGE" runat="server" Text='<%# Bind("message") %>'  ></asp:Label>
</ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton OnClientClick="return confirm('Are You Sure To Delete Data ??')" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-danger text-white" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
