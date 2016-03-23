<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<BilgiİşlemWebApplicatşon.Models.ORM.Departman>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DepartmanListele
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-6">
        <article class="module width_full">
        <header>
            <h3>Departman  Listeleme </h3>
        </header>
        <p>
            <%: Html.ActionLink("Yeni Departman Ekle", "DepartmanEkle") %>
        </p>
        <table class="table-bordered " style="width:70%">
            <tr>
                <th>
                    <%: Html.DisplayNameFor(model => model.DepartmanID) %>
                </th>
                <th>
                    <%: Html.DisplayNameFor(model => model.DepartmanAdi) %>
                </th>
                <th></th>
            </tr>

            <% foreach (var item in Model)
               { %>
            <tr>
                <td>
                    <%: Html.DisplayFor(modelItem => item.DepartmanID) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.DepartmanAdi) %>
                </td>
                <td>
                    <%: Html.ActionLink("Duzenle", "DepartmanDuzenle", new {  id=item.DepartmanID }) %> |
                    <%: Html.ActionLink("Sil", "DepartmanSil", new { id=item.DepartmanID  }) %>
                </td>
            </tr>
            <% } %>
        </table>
    </article>
    </div>
    <div class="col-md-6">

       
    </div>
    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/MyBootstrap/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
