<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPublishers.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddPublishers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Publisher</h3>
    <div class="row">
        <div class="col-md-3">
            Publisher Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Publisher Address:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubAddr" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Publisher City:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubCity" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Publisher Postal Code:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubPost" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Publisher Country:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubCtry" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Publisher Phone:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubPhone" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmitPub" runat="server" Text="Add Publisher" CssClass="btn btn-primary" OnClick="btnSubmitPub_Click" />
        </div>
    </div>
</asp:Content>
