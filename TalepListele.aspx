<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BilgiİşlemWebApplicatşon.Models.ORM.Talep>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TalepListele
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Talep Listeleme</h3>
        </header>
        <p>
            <%: Html.ActionLink("Yeni Talep Oluştur", "TalepEkle") %>
        </p>
        <table style="width:100%" class="table-bordered ">
            <tr>
                <th>
                    <%: Html.DisplayNameFor(model => model.IletisimAd) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.IletisimSoyad) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.IstekTur) %>   
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.KayitTarih) %>  
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.Birim) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.Bolum) %>
                </th>
                <th></th>
            </tr>

            <% foreach (var item in Model)
               { %>
            <tr>
                <td>
                    <%: Html.DisplayFor(modelItem => item.IletisimAd) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.IletisimSoyad) %> 
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.IstekTur) %>   
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.KayitTarih) %>   
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.Birim) %>   
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.Bolum) %>
                </td>
                <td>
                    <%: Html.ActionLink("Duzenle", "TalepDuzenle", new { id=item.TalepID }) %> |
                    <%: Html.ActionLink("Sil", "TalepSil", new { id=item.TalepID }) %>
                </td>
            </tr>
            <% } %>
        </table>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/MyBootstrap/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
