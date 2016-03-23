<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" Inherits="System.Web.Mvc.ViewPage<BilgiİşlemWebApplicatşon.Models.ORM.Departman>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    DepartmanGuncelBasarili
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



    <article class="module width_full">
        <header>
            <h3>DepartmanGuncelBasarili</h3>
        </header>
     <%Html.DisplayFor(Model => Model.DepartmanAdi); %>  departman düzenlendi..
     </article>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
