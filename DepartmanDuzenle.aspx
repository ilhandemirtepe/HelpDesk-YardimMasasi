<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Departman>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DepartmanDuzenle
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <article class="module width_full">
        <header>
            <h3>Departman  Düzenleme </h3>
        </header>

        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
            
            <table >
                <tr>
                    <td>  <%: Html.LabelFor(model => model.DepartmanID) %></td>  
                    <td>  <%: Html.EditorFor(model => model.DepartmanID) %></td>
                    <td>  <%: Html.ValidationMessageFor(model => model.DepartmanID) %></td>
                </tr>
                <tr>
                    <td>            <%: Html.LabelFor(model => model.DepartmanAdi) %></td>
                    <td>   <%: Html.EditorFor(model => model.DepartmanAdi) %></td>
                    <td>  <%: Html.ValidationMessageFor(model => model.DepartmanAdi) %></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="submit" value="Düzenle" /> </td>
                </tr>
            </table>
       
        <% } %>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/MyBootstrap/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
