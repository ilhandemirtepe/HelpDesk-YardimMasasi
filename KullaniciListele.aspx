<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master"
    Inherits="System.Web.Mvc.ViewPage< IEnumerable<BilgiİşlemWebApplicatşon.Models.DIO.KullanıcıHelper>>" %>

  
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    KullaniciListele
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <article class="module width_full">
        <header>
            <h3>Kullanıcı Listele</h3>
        </header>
       
        <table class="table-bordered " style="width: 100%">

             <%: Html.ActionLink("Yeni Kullanıcı Ekle", "KullanıcıEkle") %>
            <thead>
                <tr>
                    <th>Kullanıcı Numara</th>
                    <th>Adı</th>
                    <th>Soyadı</th>
                    <th>Kullanici Adı</th>
                    <th>Şifre</th>
                    <th>E-Posta</th>
                    <th>Departman Adı</th>
                    <th>Rol Adı</th>
                    <th colspan="2">Düzenle</th>
                    <th colspan="2">Sil</th>
                </tr>
            </thead>
            <% foreach (var item in Model)
               { %>
            <tr>
                <td><%=Html.DisplayName(item.KullaniciNo.ToString()) %></td>
                <td><%=Html.DisplayName(item.KullaniciNormalAdi) %></td>
                <td><%=Html.DisplayName(item.KullaniciNormalSoyadi) %></td>
                <td><%=Html.DisplayName(item.KullaniciAdi) %></td>
                <td><%=Html.DisplayName(item.Password) %></td>
                <td><%=Html.DisplayName(item.E_Posta) %></td>
                <td><%=Html.DisplayName(item.DepartmanAdi) %></td>
                <td><%=Html.DisplayName(item.RolAdi) %></td>
                <td><%:Html.ActionLink(" Düzenle", "KullanıcıDuzenle", new{Numara=item.KullaniciNo })%></td>
                <td><%:Html.ActionLink(" Sil", "KullanıcıSil", new{id=item.KullaniciNo })%></td>
            </tr>
            <% } %>
        </table>
    </article>
  
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/MyBootstrap/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet" />
</asp:Content>
