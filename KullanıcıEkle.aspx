<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Kullanici>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    KullanıcıEkle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Kullanıcı Ekle</h3>
        </header>
        <%using (Html.BeginForm("KullanıcıEkle", "Admin", FormMethod.Post, new { @name = "formKulanıcıEkle" }))
          {%>
        <table style="width: 40%">
            <tr>
                <td>
                    <h5>Adı &nbsp; </h5>
                </td>
                <td><%:Html.TextBox("txtAdi") %></td>
            </tr>
            <tr>
                <td>
                    <h5>Soyadı &nbsp; </h5>
                </td>
                <td><%:Html.TextBox("txtSoyadi") %></td>
            </tr>
            <tr>
                <td>
                    <h5>Kullanıcı Adı &nbsp; </h5>
                </td>
                <td><%:Html.TextBox("txtKullaiciAdi") %></td>
            </tr>
            <tr>
                <td>
                    <h5>Şifre &nbsp; </h5>
                </td>
                <td><%:Html.TextBox("txtSifre") %></td>
            </tr>
            <tr>
                <td>
                    <h5>E-mail  &nbsp; </h5>
                </td>
                <td><%:Html.TextBox("txtEmail") %></td>
            </tr>
            <tr>
                <td>Departman Seç</td>
                <td><%:Html.DropDownList("departmanlarim")%></td>
            </tr>
            <tr>
                <td>Kullanıcı Seç</td>
                <td><%:Html.DropDownList("rollerim") %></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Ekle " /></td>
            </tr>

        </table>
        <%}
          if (!Page.IsPostBack)  //Sayfa yenilenmendiyse 
          {
              Response.Write(ViewBag.sonuc);  //bu kullanıcı eklemeye yarar
          }       
          
        %>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
