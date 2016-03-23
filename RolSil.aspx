<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Rol>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RolSil
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Rol Sil</h3>
        </header>
        <h3>Silmek istediginizden eminmisiniz ?</h3>
        <fieldset>
            <legend>Roller</legend>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.RolAdi) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.RolAdi) %>
            </div>
        </fieldset>
        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <p>
            <input type="submit" value="Sil" />
             <%: Html.HiddenFor(model => model.RolID) %>
        </p>
        <% } %>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
