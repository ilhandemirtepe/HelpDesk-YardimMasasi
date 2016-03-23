<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Kullanici>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    KullanıcıDuzenle
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Kullanıcı Düzenle</h3>
        </header>

        <% using (Html.BeginForm())
           { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Kullanicilar</legend>
            <table>
                <tr>
      
                </tr>
                <tr>
                    <td><%: Html.HiddenFor(model => model.KullaniciID) %></td>

                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.KullaniciAdi) %></td>
                    <td><%: Html.EditorFor(model => model.KullaniciAdi) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.KullaniciAdi) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.KullaniciSoyadi) %></td>
                    <td><%: Html.EditorFor(model => model.KullaniciSoyadi) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.KullaniciSoyadi) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.KullaniciPassword) %></td>
                    <td><%: Html.EditorFor(model => model.KullaniciPassword) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.KullaniciPassword) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.DepartmanID) %></td>
                    <td><%: Html.DropDownList("departmanlarim") %></td>
                    <td><%: Html.ValidationMessageFor(model => model.DepartmanID) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.RolID) %></td>
                    <td><%: Html.DropDownList("rollerim") %></td>
                    <td><%: Html.ValidationMessageFor(model => model.RolID) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.EpostaAdres) %></td>
                    <td><%: Html.EditorFor(model => model.EpostaAdres) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.EpostaAdres) %></td>
                </tr>
                <tr>
                    <td><%: Html.LabelFor(model => model.KullaniciUserName) %></td>
                    <td><%: Html.EditorFor(model => model.KullaniciUserName) %></td>
                    <td><%: Html.ValidationMessageFor(model => model.KullaniciUserName) %></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Düzenle" /></td>
                </tr>
            </table>
        </fieldset>
        <% } if (!Page.IsPostBack)
           {
                   Response.Write( ViewBag.duzenlendi);        
           } %>

        <div>
            <%: Html.ActionLink("Listeye Geri Dön", "KullaniciListele") %>
        </div>
    </article>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
