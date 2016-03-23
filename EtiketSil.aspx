<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Etiket>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EtiketSil
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <article class="module width_full">
        <header>
            <h3>Etiket  Sil</h3>
        </header>

        <h3>Silmek istediginizden eminmisiniz ?</h3>

        <fieldset>
            <legend>Etiketler</legend>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.EtiketAd) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.EtiketAd) %>
            </div>
        </fieldset>
        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <p>
            <%: Html.HiddenFor(model => model.EtiketID)
            
            
                %>
            <input type="submit" value="Delete" />
            |
        <%: Html.ActionLink("Back to List", "EtiketListele") %>
        </p>
        <% } %>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
