<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Talep>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TalepEkle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <article class="module width_full">
        <header>
            <h3>Talep Ekle</h3>
        </header>
        <%using (Html.BeginForm("TalepEkle", "Admin", FormMethod.Post, new { @name = "formTalepEkle" }))
          {%>     
        <table>
            <tr>
                <td> <h5> Adı &nbsp; </h5></td>
                <td><%:Html.TextBox("txtTalepİletisimAdi") %></td>
            </tr>
             <tr>
                <td> <h5>Soyadı &nbsp; </h5></td>
                <td><%:Html.TextBox("txtTalepİletisimSoyadi") %></td>
            </tr>
             <tr>
                <td> <h5>İstek Türü &nbsp; </h5></td>
                <td><%:Html.TextBox("txtTalepİstekTuru") %></td>
            </tr>
             <tr>
                <td> <h5>Birim &nbsp; </h5></td>
                <td><%:Html.TextBox("txtTalepBirim") %></td>
            </tr>
             <tr>
                <td> <h5>Bölüm &nbsp; </h5></td>
                <td><%:Html.TextBox("txtTalepBolum") %></td>
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
