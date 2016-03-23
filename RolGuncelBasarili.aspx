<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Rol>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    RolGuncelBasarili
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <article class="module width_full">
        <header>
            <h3>Rol Güncelleme Başarılı</h3>
        </header>
        <%Html.DisplayFor(Model => Model.RolAdi); %>   düzenlendi..
    </article>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
