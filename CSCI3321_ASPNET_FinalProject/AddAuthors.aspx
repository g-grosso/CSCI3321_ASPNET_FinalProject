<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthors.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Author</h3>
    <div class="row">

        <div class="col-md-3">
            Author Last Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAuthLast" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

       <div class="col-md-3">
            Author First Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAuthFirst" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Author Gender:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAuthGend" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Author Birthdate:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAuthDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmitAuth" runat="server" Text="Add Author" CssClass="btn btn-primary" OnClick="btnSubmitAuth_Click" />
        </div>

    </div>
</asp:Content>
