<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Talep>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TalepGuncelBasarili
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">






    <article class="module width_full">
        <header>
            <h3>Talep Güncelleme Başarılı</h3>
        </header>
        <%Html.DisplayFor(Model => Model.TalepID); %>  talep düzenlendi..
    </article>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
