<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master"
    Inherits="System.Web.Mvc.ViewPage< IEnumerable<BilgiİşlemWebApplicatşon.Models.DIO.YasamDongusuHelper>>" %>--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master"
    Inherits="System.Web.Mvc.ViewPage< BilgiİşlemWebApplicatşon.Models.DIO.YasamDongusuListeModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    YasamaDongusuListele
 <%-- <script type="text/javascript">
    $(document).ready(function() {
        $('#Filtreleme_DonguTarih1Filtre').datepicker({ dateFormat: 'dd-MM-yyyy' });
        $('#Filtreleme_DonguTarih2Filtre').datepicker({ dateFormat: 'dd.MM.yyyy' });
    });
</script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <%using (Html.BeginForm("YasamaDongusuListele", "Admin", FormMethod.Post, new { @name = "formYasamaDongusuListele" }))
          {%>
        <table class="table table-inverse">
            <thead>
                <tr>
                    <td>Departman Seç</td>
                    <td><%:Html.DropDownList("departmanlarim", "Yok")%></td>
                </tr>
                <tr>
                    <td>Etiket  Seç</td>
                    <td><%:Html.DropDownList("etiketlerim","Yok")%></td>
                </tr>
                <tr>
                    <td>Kullanıcı  Seç</td>
                    <td><%:Html.DropDownList("kullanıcılarim","Yok")%></td>
                </tr>
                <tr>
                    <td>Talep   Seç</td>
                    <td><%:Html.DropDownList("taleplerim","Yok")%></td>
                </tr>
                <tr>
                    <td>Zaman Aralığı   Seç</td>
                    <td>
                        <%: Html.TextBoxFor(model => model.Filtreleme.DonguTarih1Filtre, new { type="date" })%>
                        <%: Html.TextBoxFor(model => model.Filtreleme.DonguTarih2Filtre, new { type="date" })%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input class="btn primary" type="submit" value="Ara" /></td>
                </tr>
            </thead>
        </table>
        <%} %>

        <table class="table table-inverse" style="width: 100%">
            <thead>
                <tr>
                    <th>Yaşam döngüsü numara</th>
                    <th>başlık</th>

                    <th>tarihi</th>
                    <th>departman adı</th>
                    <th>talep adı</th>
                    <th>kullanıcı adı</th>
                    <th>etiket adı</th>


                </tr>
            </thead>
            <% foreach (var item in Model.YasamDongusuListe)
               { %>
            <tr>
                <td><%=Html.DisplayName(item.YasamDongusuNo.ToString()) %></td>
                <td><%=Html.DisplayName(item.TalepBaslik) %></td>

                <td><%=Html.DisplayName(item.Tarihimiz.ToString()) %></td>
                <td><%=Html.DisplayName(item.DepartmanAdimiz) %></td>
                <td><%=Html.DisplayName(item.TalepAdimiz) %></td>
                <td><%=Html.DisplayName(item.KullaniciAdimiz) %></td>
                <td><%=Html.DisplayName(item.EtiketAdimiz) %></td>
            </tr>
            <% } %>
        </table>

    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/MyBootstrap/bootstrap-3.3.6-dist/css/bootstrap.css" rel="stylesheet" />

</asp:Content>
