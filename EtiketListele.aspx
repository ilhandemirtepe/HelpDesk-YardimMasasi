<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BilgiİşlemWebApplicatşon.Models.ORM.Etiket>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EtiketListele
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Etiket Listesi</h3>
        </header>
        <p>
            <%: Html.ActionLink("Yeni Etiket Ekle", "EtiketEkle") %>
        </p>
        <table class="table-bordered " style="width:80%">
            <tr>
                <th> Etiket Adı</th>
                <th>Etiket Numara</th>
            </tr>

            <% foreach (var item in Model)
               { %>
            <tr>
                <td>
                    <%: Html.DisplayFor(modelItem => item.EtiketID) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.EtiketAd) %>
                </td>
                <td>
                    <%: Html.ActionLink("Düzenle", "EtiketDuzenle", new {  id=item.EtiketID  }) %> |
         
                    <%: Html.ActionLink("Sil", "EtiketSil", new {  idSil=item.EtiketID  }) %>
                </td>
            </tr>
            <% } %>
        </table>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/MyBootstrap/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
