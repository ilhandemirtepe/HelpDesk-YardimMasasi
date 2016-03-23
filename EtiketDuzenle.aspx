<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Etiket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EtiketDuzenle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <article class="module width_full">
        <header>
            <h3>Etiket  Düzenle</h3>
        </header>

        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Etiketler</legend>
            <table>
                <tr>
                    <td><%: Html.LabelFor(model => model.EtiketID) %> </td>   &nbsp;  &nbsp
                    <td><%: Html.EditorFor(model => model.EtiketID) %></td>    &nbsp;  &nbsp
                    <td><%: Html.ValidationMessageFor(model => model.EtiketID) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.EtiketAd) %></td>
                    <td><%: Html.EditorFor(model => model.EtiketAd) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.EtiketAd) %></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Düzenle" /></td>
                </tr>
            </table>
        </fieldset>
        <% } %>
    </article>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
