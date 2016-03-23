<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>
    <link href="../../Content/css/style.css" rel="stylesheet" />

    <script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
    <script type="text/javascript">
        function Kontrol() {
            var uyari = "";  //boş geçilsin alanlar
            var kadi = $("#txtKadi").val();
            kadi = $.trim(kadi);
            var sifre = $("#txtSifre").val();
            sifre = $.trim(sifre)
            if (kadi == "") {
                uyari = 1;
                $("#hata").html("Kullanıcı Adı Boş Geçilemez");
            }
            else if (sifre == "") {
                uyari = 1;
                $("#hata").html("Şifre Boş Geçilemez");
            }
            if (uyari == "") {   //alanlar boş geçildi
                return true;
            }
            else {               //alanlar boş geçilmedi
                return false;
            }
        }
    </script>
</head>
<body>
    <section class="container">
        <div class="login">
            <h1>Bilgi İşlem Login</h1>

            <%using (Html.BeginForm("login", "Admin", FormMethod.Post, new { @name = "formlogin", @id = "frmL" }))
              { %>
                <p><%:Html.TextBox("txtKullaniciAdi", "", new {@id="txtKadi",placeholder="Kullanıcı Adı"  })%>  </p>
                <p><%:Html.Password("txtSifre", "", new {@id="txtSifre",placeholder="Şifre"  })%> </p>
                <table>
                    <tr>
                        <td>
                            <p class="submit">
                                <input type="submit" name="commit" value="Giriş" id="buttton" onclick="if (!Kontrol()) return false;">
                            </p>
                        </td>
                        <td></td>
                        <td>
                            <div id="hata">
                            </div>
                        </td>
                    </tr>
                </table>
            <%}
              if (ViewBag.onay == false)
              {
                  Response.Write("Kullanıcı Adı veya Şifre yanlıştır");
              } 
            %>
        </div>
    </section>
</body>
</html>
