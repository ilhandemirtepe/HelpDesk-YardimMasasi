<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Talep>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TalepSil
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <article class="module width_full">
        <header>
            <h3>Rol Sil</h3>
        </header>
        <h3>Silmek istediginizden eminmisiniz ?</h3>
        <fieldset>
            <legend>Talepler</legend>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.IletisimAd) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.IletisimAd) %>
            </div>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.IletisimSoyad) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.IletisimSoyad) %>
            </div>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.IstekTur) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.IstekTur) %>
            </div>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.KayitTarih) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.KayitTarih) %>
            </div>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.Birim) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.Birim) %>
            </div>

            <div class="display-label">
                <%: Html.DisplayNameFor(model => model.Bolum) %>
            </div>
            <div class="display-field">
                <%: Html.DisplayFor(model => model.Bolum) %>
            </div>
        </fieldset>
        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <p>
            <input type="submit" value="Sil" />
            |
             <%: Html.HiddenFor(model => model.TalepID) %>
    
        </p>
        <% } %>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
