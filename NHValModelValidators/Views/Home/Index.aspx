<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%= Html.Encode(ViewData["Message"]) %></h2>
    <p>
        Go to the create customer page: <%= Html.ActionLink("Create New Customer", "Create", "Customer") %>
    </p>
    <p>
        Go to the create customer page with client-side validation enabled: <%= Html.ActionLink("Create New Customer w/ Client Val", "CreateWithClientVal", "Customer") %>
    </p>
</asp:Content>
