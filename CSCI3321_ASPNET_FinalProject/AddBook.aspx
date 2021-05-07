<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <div class="col-md-3">
            Book Title:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBookTitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Book Author:
        </div>
        <div class="col-md-9">
            <!-- Dropdown -->
            <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="sdsAuthors" DataTextField="LastName" DataValueField="AuthorID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsAuthors" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, LastName FROM Authors"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">
            Book Price
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBookPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Publish Date:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBookDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>

        <div class="col-md-3">
            Book Publisher:
        </div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="sdsPub" DataTextField="PublisherName" DataValueField="PublisherID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsPub" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
            
        </div>

        <div class="col-md-3">
            Book Genre:
        </div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="sdsGenre" DataTextField="GenreName" DataValueField="GenreID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT [GenreID], [GenreName] FROM [Genres]"></asp:SqlDataSource>
            
        </div>

        <div class="col-md-3">
            Word Count:
        </div>
        <div class="col-md-9">
             <asp:TextBox ID="txtBookWC" runat="server" CssClass="form-control" TextMode="Number" Text="0"></asp:TextBox>
        </div>


        <div class="col-md-3">&nbsp;</div>
        <div class="col-md-9">
            <asp:Button ID="btnSubmitBook" runat="server" Text="Add Book" CssClass="btn btn-primary" OnClick="btnSubmitBook_Click" />
        </div>
    </div>
    <br/>
    <asp:Panel ID="pnlBookList" runat="server" CssClass="row" Visible="false">
        <asp:Table ID="tblBookList" runat="server" CssClass="table table-striped">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>Book Title</asp:TableHeaderCell>
                <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
                <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
                <asp:TableHeaderCell>Book Price</asp:TableHeaderCell>
                <asp:TableHeaderCell>Publishing Date</asp:TableHeaderCell>
                <asp:TableHeaderCell>Book Publisher</asp:TableHeaderCell>
                <asp:TableHeaderCell>Book Genre</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
    </asp:Panel>
</asp:Content>
