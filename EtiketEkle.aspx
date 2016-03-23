<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EtiketEkle
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <article class="module width_full">
        <header>
            <h3>Etiket  Ekle</h3>
        </header>
        <%using (Html.BeginForm("EtiketEkle", "Admin", FormMethod.Post, new { @name = "formEtiketEkle" }))
          {%>     
        <table>
            <tr>
                <td> <h5>Etiket Adı &nbsp; </h5></td>
                <td><%:Html.TextBox("txtEtiketAdi") %></td>
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
