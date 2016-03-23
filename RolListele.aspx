<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BilgiİşlemWebApplicatşon.Models.ORM.Rol>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RolListele
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   
    <article class="module width_full">
        <header>
            <h3>Roller Listesi</h3>
        </header>


        <p>
            <%: Html.ActionLink("Yeni Rol Oluştur", "RolEkle") %>
        </p>
        <table class="table-bordered " style="width:60%">
            <tr>
                <th>
                    <%: Html.DisplayNameFor(model => model.RolAdi) %>
                </th>
                <th></th>
            </tr>

            <% foreach (var item in Model)
               { %>
            <tr>
                <td>
                    <%: Html.DisplayFor(modelItem => item.RolAdi) %>
                </td>
                <td>
                    <%: Html.ActionLink("Düzenle", "RolDuzenle", new { id=item.RolID }) %> |
        
            <%: Html.ActionLink("Sil", "RolSil", new { id=item.RolID }) %>
                </td>
            </tr>
            <% } %>
        </table>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/MyBootstrap/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
