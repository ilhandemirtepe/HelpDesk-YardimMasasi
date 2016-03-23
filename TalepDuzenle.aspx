<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Talep>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TalepDuzenle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Talep Düzenleme</h3>
        </header>

        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
        <table style="width:40%">
            <tr>
                <td><%: Html.HiddenFor(model => model.TalepID) %></td>
            </tr>
            <tr>
                <td><%: Html.LabelFor(model => model.IletisimAd) %></td>
                <td><%: Html.EditorFor(model => model.IletisimAd) %></td>
                <td><%: Html.ValidationMessageFor(model => model.IletisimAd) %></td>
            </tr>
            <tr>
                <td><%: Html.LabelFor(model => model.IletisimSoyad) %></td>
                <td><%: Html.EditorFor(model => model.IletisimSoyad) %></td>
                <td><%: Html.ValidationMessageFor(model => model.IletisimSoyad) %></td>
            </tr>
            <tr>
                <td><%: Html.LabelFor(model => model.IstekTur) %></td>
                <td><%: Html.EditorFor(model => model.IstekTur) %></td>
                <td><%: Html.ValidationMessageFor(model => model.IstekTur) %></td>
            </tr>
            <tr>
                <td><%: Html.LabelFor(model => model.KayitTarih) %></td>
                <td><%: Html.EditorFor(model => model.KayitTarih) %></td>
                <td><%: Html.ValidationMessageFor(model => model.KayitTarih) %></td>
            </tr>
            <tr>
                <td><%: Html.LabelFor(model => model.Birim) %></td>
                <td><%: Html.EditorFor(model => model.Birim) %></td>
                <td><%: Html.ValidationMessageFor(model => model.Birim) %></td>
            </tr>
            <tr>
                <td> <%: Html.LabelFor(model => model.Bolum) %></td>
                <td>    <%: Html.EditorFor(model => model.Bolum) %></td>
                <td> <%: Html.ValidationMessageFor(model => model.Bolum) %></td>
            </tr>
            <tr>
                <td colspan="2"> <input type="submit" value="Düzenle" /> </td>
            </tr>
        </table>
    
        <% } %>

        <div>
            <%: Html.ActionLink("Listelemeye Geri Dön", "TalepListele") %>
        </div>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
