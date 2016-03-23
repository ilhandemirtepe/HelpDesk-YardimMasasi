<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Rol>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RolDuzenle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Rol  Düzenle</h3>
        </header>

        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <table>
                <tr>
                    <td><%: Html.HiddenFor(model => model.RolID) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.RolAdi) %></td>
                    <td><%: Html.EditorFor(model => model.RolAdi) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.RolAdi) %></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Düzenle" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <% } %>
    </article>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
