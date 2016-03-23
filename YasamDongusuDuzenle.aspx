<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Dongu>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    YasamDongusuDuzenle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Yaşam Döngüsü Düzenle</h3>
        </header>

        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>YasamDongusu</legend>


            <table>
                <tr>
                    <td><%: Html.HiddenFor(model => model.DonguID) %></td>
                    <td></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td><%: Html.LabelFor(model => model.TalepBaslik) %></td>
                    <td><%: Html.EditorFor(model => model.TalepBaslik) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.TalepBaslik) %></td>
                </tr>
               
                <tr>
                    <td><%: Html.LabelFor(model => model.TalepKayitTarih) %></td>
                    <td><%: Html.EditorFor(model => model.TalepKayitTarih) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.TalepKayitTarih) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.DepartmanID) %></td>
                    <td><%: Html.DropDownList("departmanlarim") %></td>
                    <td><%: Html.ValidationMessageFor(model => model.DepartmanID) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.EtiketID) %></td>
                     <td><%: Html.DropDownList("etiketlerim") %></td>
                    <td><%: Html.ValidationMessageFor(model => model.EtiketID) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.KullaniciID) %></td>
                    <td><%: Html.DropDownList("kullanıcılarim") %></td>
                    <td><td><%: Html.ValidationMessageFor(model => model.KullaniciID) %></td></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.TalepID) %></td>
                    <td><%: Html.DropDownList("taleplerim") %></td>
                    <td><%: Html.ValidationMessageFor(model => model.TalepID) %></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Düzenle" /></td>
                </tr>
            </table>
        </fieldset>
        <% }

           if (!IsPostBack)
           {
               Response.Write(ViewBag.duzenlendi);

           }
        %>

        <div>
            <%: Html.ActionLink("Listelemeye Geri Dön", "YasamaDongusuListele") %>
        </div>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
