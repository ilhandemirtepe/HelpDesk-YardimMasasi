<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Departman>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DepartmanSil
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Etiket  Sil</h3>
        </header>

        <h3>Silmek istediginizden eminmisiniz ?</h3>
        <fieldset>
            <legend>Departmanlar</legend>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.DepartmanAdi) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.DepartmanAdi) %>
            </div>
        </fieldset>
        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <p>
              <%: Html.HiddenFor(model => model.DepartmanID) %>
            <input type="submit" value="Sil" />
            |
        <%: Html.ActionLink("Deprtman Listesine Geri Dön", "DepartmanListele") %>
        </p>
        <% } %>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
