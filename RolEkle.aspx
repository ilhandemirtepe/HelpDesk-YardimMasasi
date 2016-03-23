<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Rol>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RolEkle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <article class="module width_full">
        <header>
            <h3>Rol Ekle</h3>
        </header>
        <%using (Html.BeginForm("RolEkle", "Admin", FormMethod.Post, new { @name = "formRolEkle" }))
          {%>     
        <table>
            <tr>
                <td> <h5>Rol Adı &nbsp; </h5></td>
                <td><%:Html.TextBox("txtRolAdi") %></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit"  value="Ekle "/></td>
            </tr>
        </table>
        <%} %>
    </article>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
