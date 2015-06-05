<%@ Page Title="" Language="C#" MasterPageFile="~/lesson4.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <fieldset>
        <label for="txtName">Name:</label>
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtName" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtPassword">Password:</label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtPassword">Confirm Password:</label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtConfirmPassword" CssClass="label label-danger"></asp:RequiredFieldValidator>
    <asp:CompareValidator runat="server" ErrorMessage="Passwords do not match" CssClass="label label-danger" ControlToValidate="txtPassword" ControlToCompare="txtConfirmPassword" Type="String" Operator="Equal"></asp:CompareValidator>
    </fieldset>

    <fieldset>
        <label for="txtAge">Age:</label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtAge" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator runat="server" ErrorMessage="Please Enter a Number Between 1 - 120" ControlToValidate="txtAge" CssClass="label label-danger" MinimumValue="1" MaximumValue="120" Type="Integer" Display="Dynamic"></asp:RangeValidator>

    </fieldset>
    
       
    <asp:Button ID="btnSubmit" Text="Submit" runat="server" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
    
    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>
