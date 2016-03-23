<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Dongu>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    YasamDongusuEkle
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <article class="module width_full">
        <header>
               <h3>Yasam Dongusu  Oluştur</h3>
        </header>
        <%using (Html.BeginForm("YasamDongusuEkle", "Admin", FormMethod.Post, new { @name = "formYasamDongusuEkle" }))
          {%>
        <table style="width: 40%">
            <tr>
                <td>
                    <h5>Talep Başlığı &nbsp; </h5>
                </td>
                <td><%:Html.TextBox("txtTalepBaslik") %></td>
            </tr>
           
             <tr>
                <td>İstek Türü</td>
                <td><%:Html.DropDownList("taleplerim") %></td>
            </tr>
             <tr>
                <td>Seçilen Departman</td>
                <td><%:Html.DropDownList("departmanlarim")%></td>
            </tr>
            <tr>
                <td>Seçilen Etiket</td>
                <td><%:Html.DropDownList("etiketlerim")%></td>
            </tr>
            <tr>
                <td>Talebi Oluşturan Kullanıcı</td>
                <td><%:Html.DropDownList("kullanıcılarim")%></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Ekle " /></td>
            </tr>
        </table>
        <%}
            if (!IsPostBack) //sayfa yenilenmediyse
            {
                Response.Write(ViewBag.sonuc);//Yaşam dongusu oluşturur
            } 
        %>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
