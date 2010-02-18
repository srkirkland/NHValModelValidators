<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<NHValModelValidators.Models.Customer>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

    <table>
        <tr>
            <th></th>
            <th>
                CompanyName
            </th>
            <th>
                ContactName
            </th>
            <th>
                Country
            </th>
            <th>
                Fax
            </th>
            <th>
                Age
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.Encode(item.CompanyName) %>
            </td>
            <td>
                <%= Html.Encode(item.ContactName) %>
            </td>
            <td>
                <%= Html.Encode(item.Country) %>
            </td>
            <td>
                <%= Html.Encode(item.Fax) %>
            </td>
            <td>
                <%= Html.Encode(item.Age) %>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>

