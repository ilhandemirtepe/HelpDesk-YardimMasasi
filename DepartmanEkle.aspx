<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Departman>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DepartmanEkle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <article class="module width_full">
        <header>
            <h3>Departman  Ekle</h3>
        </header>
        <%using (Html.BeginForm("DepartmanEkle", "Admin", FormMethod.Post, new { @name = "formDepartmanEkle" }))
          {%>     
        <table>
            <tr>
                <td> <h5>Departman Adı &nbsp; </h5></td>
                <td><%:Html.TextBox("txtDepartmanAdi") %></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit"  value="Ekle "/></td>
            </tr>
        </table>
        <%} %>
    </article>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/MyBootstrap/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
