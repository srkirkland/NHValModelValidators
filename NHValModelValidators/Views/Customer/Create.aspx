<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<NHValModelValidators.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>
    
    <h3><%= Html.Encode(TempData["Message"]) %></h3>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(false) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.CompanyName) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.CompanyName) %>
                <%= Html.ValidationMessageFor(model => model.CompanyName) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.ContactName) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.ContactName) %>
                <%= Html.ValidationMessageFor(model => model.ContactName) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Country) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Country) %>
                <%= Html.ValidationMessageFor(model => model.Country) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Fax) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Fax) %>
                <%= Html.ValidationMessageFor(model => model.Fax) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Age) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Age) %>
                <%= Html.ValidationMessageFor(model => model.Age) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

