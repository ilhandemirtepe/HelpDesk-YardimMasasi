using BilgiİşlemWebApplicatşon.Models.ORM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Linq;
using System.Data.Linq.SqlClient;
using BilgiİşlemWebApplicatşon.Models.DIO;
namespace BilgiİşlemWebApplicatşon.Controllers
{
    public class AdminController : Controller
    {

        DataClasses1DataContext g = new DataClasses1DataContext();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection frm)
        {
            string kullaniciAdim = frm.Get("txtKullaniciAdi");
            string sifrem = frm.Get("txtSifre");
            var kayit = from k in g.Kullanicis
                        where k.KullaniciAdi == kullaniciAdim && k.KullaniciPassword == sifrem
                        select new { k.KullaniciID };
            if (kayit.Count() > 0)
            {
                Session.Add("giris", true);
                foreach (var item in kayit)
                {
                    Session.Add("id", item.KullaniciID);
                }
                return RedirectToAction("index");
            }
            else
            {
                ViewBag.onay = false;
            }

            return View();
        }
        public ActionResult EtiketEkle()
        {
            if (Request.HttpMethod == "POST")
            {
                string etiketAdi = Request.Form.Get("txtEtiketAdi");
                Etiket e = new Etiket
                {
                    EtiketAd = etiketAdi
                };
                g.Etikets.InsertOnSubmit(e);
                g.SubmitChanges();

            }
            return View();
        }
        public ActionResult EtiketListele()
        {
            return View(g.Etikets.ToList());
        }
        public ActionResult EtiketDuzenle(int id)
        {
            Etiket e = g.Etikets.First(m => m.EtiketID == id);
            return View(e);
        }
        [HttpPost]
        public ActionResult EtiketDuzenle(Etiket etk)
        {
            if (ModelState.IsValid)
            {
                var result = from e in g.Etikets where e.EtiketID == etk.EtiketID select e;
                foreach (var item in result)
                {
                    item.EtiketID = etk.EtiketID;
                    item.EtiketAd = etk.EtiketAd;
                }
                g.SubmitChanges();
                return View("EtiketGuncelBasarili", etk);
            }
            return View();
        }
        public ActionResult EtiketGuncelBasarili()
        {
            return View();
        }
        public ActionResult EtiketSil(int idSil)
        {
            Etiket e = g.Etikets.First(x => x.EtiketID == idSil);
            return View(e);
        }
        [HttpPost]
        public ActionResult EtiketSil(Etiket og)
        {
            Etiket etiketim = g.Etikets.First(x => x.EtiketID == og.EtiketID);
            g.Etikets.DeleteOnSubmit(etiketim);
            g.SubmitChanges();
            return RedirectToAction("EtiketListele");
        }
        public ActionResult DepartmanEkle()
        {
            if (Request.HttpMethod == "POST")
            {
                string departmanAdi = Request.Form.Get("txtDepartmanAdi");
                Departman d = new Departman
                {
                    DepartmanAdi = departmanAdi
                };
                g.Departmans.InsertOnSubmit(d);
                g.SubmitChanges();

            }
            return View();
        }
        public ActionResult DepartmanListele()
        {
            return View(g.Departmans.ToList());
        }
        public ActionResult DepartmanDuzenle(int id)
        {
            Departman d = g.Departmans.First(m => m.DepartmanID == id);
            return View(d);
        }
        [HttpPost]
        public ActionResult DepartmanDuzenle(Departman d)
        {
            if (ModelState.IsValid)
            {
                var result = from e in g.Departmans where e.DepartmanID == d.DepartmanID select e;
                foreach (var item in result)
                {
                    item.DepartmanID = d.DepartmanID;
                    item.DepartmanAdi = d.DepartmanAdi;
                }
                g.SubmitChanges();
                return View("DepartmanGuncelBasarili", d);
            }
            return View();
        }
        public ActionResult DepartmanSil(int id)
        {
            Departman d = g.Departmans.First(x => x.DepartmanID == id);
            return View(d);
        }
        [HttpPost]
        public ActionResult DepartmanSil(Departman og)
        {
            Departman departmanim = g.Departmans.First(x => x.DepartmanID == og.DepartmanID);
            g.Departmans.DeleteOnSubmit(departmanim);
            g.SubmitChanges();
            return RedirectToAction("DepartmanListele");
        }
        public ActionResult DepartmanGuncelBasarili()
        {
            return View();
        }
        public ActionResult RolEkle()
        {
            if (Request.HttpMethod == "POST")
            {
                string rolAdi = Request.Form.Get("txtRolAdi");
                Rol r = new Rol
                {
                    RolAdi = rolAdi
                };
                g.Rols.InsertOnSubmit(r);
                g.SubmitChanges();
            }
            return View();
        }
        public ActionResult RolListele()
        {
            return View(g.Rols.ToList());
        }
        public ActionResult RolDuzenle(int id)
        {
            Rol r = g.Rols.First(m => m.RolID == id);
            return View(r);
        }
        [HttpPost]
        public ActionResult RolDuzenle(Rol d)
        {
            if (ModelState.IsValid)
            {
                var result = from e in g.Rols where e.RolID == d.RolID select e;
                foreach (var item in result)
                {
                    item.RolID = d.RolID;
                    item.RolAdi = d.RolAdi;
                }
                g.SubmitChanges();
                return View("RolGuncelBasarili", d);
            }
            return View();
        }
        public ActionResult RolGuncelBasarili()
        {
            return View();
        }
        public ActionResult RolSil(int id)
        {
            Rol r = g.Rols.First(x => x.RolID == id);
            return View(r);
        }
        [HttpPost]
        public ActionResult RolSil(Rol og)
        {
            Rol rolum = g.Rols.First(x => x.RolID == og.RolID);
            g.Rols.DeleteOnSubmit(rolum);
            g.SubmitChanges();
            return RedirectToAction("RolListele");
        }
        public ActionResult TalepEkle()
        {
            if (Request.HttpMethod == "POST")
            {
                string talepİletisimAd = Request.Form.Get("txtTalepİletisimAdi");
                string talepİletisimSoyad = Request.Form.Get("txtTalepİletisimSoyadi");
                string talepİstekTur = Request.Form.Get("txtTalepİstekTuru");
                DateTime talepKayitTarih = DateTime.Now;
                string talepBirim = Request.Form.Get("txtTalepBirim");
                string talepBolum = Request.Form.Get("txtTalepBolum");

                Talep t = new Talep
                {
                    IletisimAd = talepİletisimAd,
                    IletisimSoyad = talepİletisimSoyad,
                    IstekTur = talepİstekTur,
                    KayitTarih = talepKayitTarih,
                    Birim = talepBirim,
                    Bolum = talepBolum
                };
                g.Taleps.InsertOnSubmit(t);
                g.SubmitChanges();
            }
            return View();
        }
        public ActionResult TalepListele()
        {
            return View(g.Taleps.ToList());
        }
        public ActionResult TalepDuzenle(int id)
        {
            Talep t = g.Taleps.First(m => m.TalepID == id);
            return View(t);
        }
        [HttpPost]
        public ActionResult TalepDuzenle(Talep d)
        {
            if (ModelState.IsValid)
            {
                var result = from e in g.Taleps where e.TalepID == d.TalepID select e;
                foreach (var item in result)
                {
                    item.TalepID = d.TalepID;
                    item.IletisimAd = d.IletisimAd;
                    item.IletisimSoyad = d.IletisimSoyad;
                    item.IstekTur = d.IstekTur;
                    item.KayitTarih = d.KayitTarih;
                    item.Birim = d.Birim;
                    item.Bolum = d.Bolum;
                }
                g.SubmitChanges();
                return View("TalepGuncelBasarili", d);
            }
            return View();
        }
        public ActionResult TalepGuncelBasarili()
        {
            return View();
        }
        public ActionResult TalepSil(int id)
        {
            Talep t = g.Taleps.First(x => x.TalepID == id);
            return View(t);
        }
        [HttpPost]
        public ActionResult TalepSil(Talep ttt)
        {
            Talep tt = g.Taleps.First(x => x.TalepID == ttt.TalepID);
            g.Taleps.DeleteOnSubmit(tt);
            g.SubmitChanges();
            return RedirectToAction("TalepListele");
        }
        //DROPDPWNLİSTLERİN İÇİNİ DOLDURMAK  İÇİN GEREKLİDİR 
        public void RolleriDroplaraAt()
        {
            List<SelectListItem> rolList = new List<SelectListItem>();
            var rollerSorgu = from k in g.Rols select k;
            foreach (var item in rollerSorgu)
            {
                rolList.Add(new SelectListItem
                {
                    Text = item.RolAdi,
                    Value = item.RolID.ToString()
                });
            }
            ViewBag.rollerim = rolList;
        }
        public void DepartmanlariDroplaraAt()
        {
            List<SelectListItem> departmanList = new List<SelectListItem>();
            var departmanSorgu = from k in g.Departmans select k;
            foreach (var item in departmanSorgu)
            {
                departmanList.Add(new SelectListItem
                {
                    Text = item.DepartmanAdi,
                    Value = item.DepartmanID.ToString()
                });
            }
            ViewBag.departmanlarim = departmanList;
        }
        public void EtiketleriDroplaraAt()
        {
            List<SelectListItem> etiketList = new List<SelectListItem>();
            var etiketSorgu = from k in g.Etikets select k;
            foreach (var item in etiketSorgu)
            {
                etiketList.Add(new SelectListItem
                {
                    Text = item.EtiketAd,
                    Value = item.EtiketID.ToString()
                });
            }
            
            ViewBag.etiketlerim = etiketList;
        }
        public void KullanıcılarıDroplaraAt()
        {
            List<SelectListItem> kullanıcıList = new List<SelectListItem>();
            var kullanıcıSorgu = from k in g.Kullanicis select k;
            foreach (var item in kullanıcıSorgu)
            {
                kullanıcıList.Add(new SelectListItem
                {
                    Text = item.KullaniciUserName,
                    Value = item.KullaniciID.ToString()
                });
            }
            ViewBag.kullanıcılarim = kullanıcıList;
        }
        public void TalepleriDroplaraAt()
        {
            List<SelectListItem> talepList = new List<SelectListItem>();
            var talepSorgu = from k in g.Taleps select k;
            foreach (var item in talepSorgu)
            {
                talepList.Add(new SelectListItem
                {
                    Text = item.IstekTur,
                    Value = item.TalepID.ToString()
                });
            }
            ViewBag.taleplerim = talepList;
        }
        public ActionResult KullanıcıEkle()
        {
            RolleriDroplaraAt();
            DepartmanlariDroplaraAt();
            return View();
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult KullanıcıEkle(FormCollection frm)
        {
            string Ad = frm.Get("txtAdi");
            string Soyad = frm.Get("txtSoyadi");
            string KullaniciAd = frm.Get("txtKullaiciAdi");
            string Sifre = frm.Get("txtSifre");
            string E_Posta = frm.Get("txtEmail");
            int DepartmanNumara = Convert.ToInt32(frm.Get("departmanlarim"));
            int RolNumara = Convert.ToInt32(frm.Get("rollerim"));
            Kullanici t = new Kullanici
            {
                KullaniciUserName = Ad,
                KullaniciSoyadi = Soyad,
                KullaniciAdi = KullaniciAd,
                KullaniciPassword = Sifre,
                EpostaAdres = E_Posta,
                DepartmanID = DepartmanNumara,
                RolID = RolNumara

            };
            g.Kullanicis.InsertOnSubmit(t);
            g.SubmitChanges();
            DepartmanlariDroplaraAt();
            RolleriDroplaraAt();
            ViewBag.sonuc = "Kullanıcı Eklendi";
            return View();

        }
        public ActionResult KullaniciListele()
        {

            var kullaniciSorgu = from k in g.Kullanicis
                                 join d in g.Departmans on k.DepartmanID equals d.DepartmanID
                                 join r in g.Rols on k.RolID equals r.RolID
                                 select new
                                 {
                                     k.KullaniciID,
                                     k.KullaniciAdi,
                                     k.KullaniciSoyadi,
                                     k.KullaniciPassword,
                                     k.EpostaAdres,
                                     k.KullaniciUserName,
                                     d.DepartmanAdi,
                                     r.RolAdi
                                 };
            List<KullanıcıHelper> kullaniciListesi = new List<KullanıcıHelper>();

            foreach (var item in kullaniciSorgu)
            {
                KullanıcıHelper kh = new KullanıcıHelper();
                kh.KullaniciNo = item.KullaniciID;
                kh.KullaniciAdi = item.KullaniciAdi;
                kh.KullaniciNormalSoyadi = item.KullaniciSoyadi;
                kh.Password = item.KullaniciPassword;
                kh.E_Posta = item.EpostaAdres;
                kh.KullaniciNormalAdi = item.KullaniciUserName;
                kh.DepartmanAdi = item.DepartmanAdi;
                kh.RolAdi = item.RolAdi;
                kullaniciListesi.Add(kh);
            }
            return View(kullaniciListesi);
        }
        public ActionResult KullanıcıSil(int id)
        {
            if (id != null)
            {
                Kullanici k = g.Kullanicis.First(x => x.KullaniciID == id);
                g.Kullanicis.DeleteOnSubmit(k);
                g.SubmitChanges();
                ViewBag.silindi = "kullanıcı başarıyla silindi 2 sn sonra yönlendirileceksiniz";
                Response.AppendHeader("Refresh", "2;url=../KullaniciListele");
                return View();
            }
            return View();
        }
        public void DepartmanUpdate(int id) //seçili olan departmanı bul bana 
        {
            List<SelectListItem> departmanList = new List<SelectListItem>();
            var departmanSorgu = from k in g.Departmans select k;
            foreach (var item in departmanSorgu)
            {

                if (id == item.DepartmanID)
                {
                    departmanList.Add(new SelectListItem
                    {
                        Text = item.DepartmanAdi,
                        Value = item.DepartmanID.ToString(),
                        Selected = true
                    });
                }
                else
                {
                    departmanList.Add(new SelectListItem
                    {
                        Text = item.DepartmanAdi,
                        Value = item.DepartmanID.ToString()
                    });
                }

            }
            ViewBag.departmanlarim = departmanList;
        }
        public void RollerUpdate(int id)
        {
            List<SelectListItem> rolList = new List<SelectListItem>();
            var rolSorgu = from r in g.Rols select r;
            foreach (var item in rolSorgu)
            {

                if (id == item.RolID)
                {
                    rolList.Add(new SelectListItem
                    {
                        Text = item.RolAdi,
                        Value = item.RolID.ToString(),
                        Selected = true
                    });
                }
                else
                {
                    rolList.Add(new SelectListItem
                    {
                        Text = item.RolAdi,
                        Value = item.RolID.ToString(),
                    });
                }

            }
            ViewBag.rollerim = rolList;
        }
        public void KullanıcılarUpdate(int id)
        {
            List<SelectListItem> kList = new List<SelectListItem>();
            var rolSorgu = from r in g.Kullanicis select r;
            foreach (var item in rolSorgu)
            {

                if (id == item.KullaniciID)
                {
                    kList.Add(new SelectListItem
                    {
                        Text = item.KullaniciUserName,
                        Value = item.KullaniciID.ToString(),
                        Selected = true
                    });
                }
                else
                {
                    kList.Add(new SelectListItem
                    {
                        Text = item.KullaniciUserName,
                        Value = item.KullaniciID.ToString(),
                    });
                }

            }
            ViewBag.kullanıcılarim = kList;
        }
        public void EtiketlerUpdate(int id)
        {
            List<SelectListItem> eList = new List<SelectListItem>();
            var eSorgu = from r in g.Etikets select r;
            foreach (var item in eSorgu)
            {

                if (id == item.EtiketID)
                {
                    eList.Add(new SelectListItem
                    {
                        Text = item.EtiketAd,
                        Value = item.EtiketID.ToString(),
                        Selected = true
                    });
                }
                else
                {
                    eList.Add(new SelectListItem
                    {
                        Text = item.EtiketAd,
                        Value = item.EtiketID.ToString(),
                    });
                }

            }
            ViewBag.etiketlerim = eList;
        }
        public void TaleplerUpdate(int id)
        {
            List<SelectListItem> tList = new List<SelectListItem>();
            var tSorgu = from r in g.Taleps select r;
            foreach (var item in tSorgu)
            {

                if (id == item.TalepID)
                {
                    tList.Add(new SelectListItem
                    {
                        Text = item.IstekTur,
                        Value = item.TalepID.ToString(),
                        Selected = true
                    });
                }
                else
                {
                    tList.Add(new SelectListItem
                    {
                        Text = item.IstekTur,
                        Value = item.TalepID.ToString(),
                    });
                }

            }
            ViewBag.taleplerim = tList;
        }
        //get kısmı
        public ActionResult KullanıcıDuzenle(int Numara)
        {
            ViewBag.duzenlendi = "";
            var kullaniciDuzenle = g.Kullanicis.First(x => x.KullaniciID == Numara);
            DepartmanUpdate(kullaniciDuzenle.DepartmanID);
            RollerUpdate(kullaniciDuzenle.RolID);
            return View(kullaniciDuzenle);
        }
        //post kısmı
        [HttpPost, ValidateInput(false)]
        public ActionResult KullanıcıDuzenle(Kullanici k, FormCollection frm)
        {
            int dapartmanid = Convert.ToInt32(frm.Get("departmanlarim"));
            int rolid = Convert.ToInt32(frm.Get("rollerim"));
            if (ModelState.IsValid)
            {
                var myKullaniciNumara = g.Kullanicis.First(x => x.KullaniciID == k.KullaniciID);
                myKullaniciNumara.KullaniciID = k.KullaniciID;
                myKullaniciNumara.KullaniciAdi = k.KullaniciAdi;
                myKullaniciNumara.KullaniciSoyadi = k.KullaniciSoyadi;
                myKullaniciNumara.KullaniciPassword = k.KullaniciPassword;
                myKullaniciNumara.EpostaAdres = k.EpostaAdres;
                myKullaniciNumara.KullaniciUserName = k.KullaniciUserName;
                myKullaniciNumara.DepartmanID = dapartmanid;
                myKullaniciNumara.RolID = rolid;
                g.SubmitChanges();
                DepartmanUpdate(dapartmanid);
                RollerUpdate(rolid);
                ViewBag.duzenlendi = "Kullanıcı Düzenlendi";
                return View();
            }
            return View();
        }
        public ActionResult YasamDongusuEkle()
        {

            EtiketleriDroplaraAt();
            DepartmanlariDroplaraAt();
            KullanıcılarıDroplaraAt();
            TalepleriDroplaraAt();
            return View();
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult YasamDongusuEkle(FormCollection frm)
        {
            string talepBaslik = frm.Get("txtTalepBaslik");
            string talepİçerik = frm.Get("txtTalepIcerik");
            int istekTurNumara = Convert.ToInt32(frm.Get("taleplerim"));
            int departmanNumara = Convert.ToInt32(frm.Get("departmanlarim"));
            int etiketNumara = Convert.ToInt32(frm.Get("etiketlerim"));
            int kullanıcıNumara = Convert.ToInt32(frm.Get("kullanıcılarim"));

            Dongu y = new Dongu
             {
                 TalepBaslik = talepBaslik,
                 TalepKayitTarih = DateTime.Now,
                 TalepID = istekTurNumara,
                 EtiketID = etiketNumara,
                 DepartmanID = departmanNumara,
                 KullaniciID = kullanıcıNumara

             };
            g.Dongus.InsertOnSubmit(y);
            g.SubmitChanges();
            DepartmanlariDroplaraAt();
            KullanıcılarıDroplaraAt();
            EtiketleriDroplaraAt();
            TalepleriDroplaraAt();
            ViewBag.sonuc = "Yaşam Döngüsü Oluştu";
            return View();

        }
        public ActionResult YasamaDongusuListele()
        {
            var YasamDongusuSorgu = from y in g.Dongus
                                    join d in g.Departmans on y.DepartmanID equals d.DepartmanID
                                    join e in g.Etikets on y.EtiketID equals e.EtiketID
                                    join k in g.Kullanicis on y.KullaniciID equals k.KullaniciID
                                    join t in g.Taleps on y.TalepID equals t.TalepID
                                    select new
                                    {
                                        y.DonguID,
                                        y.TalepBaslik,
                                        y.TalepKayitTarih,
                                        d.DepartmanAdi,
                                        e.EtiketAd,
                                        k.KullaniciUserName,
                                        t.IstekTur
                                    };
            List<YasamDongusuHelper> YasamDongusuListesi = new List<YasamDongusuHelper>();

            foreach (var item in YasamDongusuSorgu)
            {
                YasamDongusuHelper kh = new YasamDongusuHelper();
                kh.YasamDongusuNo = item.DonguID;
                kh.TalepBaslik = item.TalepBaslik;
                kh.Tarihimiz = item.TalepKayitTarih;
                kh.DepartmanAdimiz = item.DepartmanAdi;
                kh.KullaniciAdimiz = item.KullaniciUserName;
                kh.TalepAdimiz = item.IstekTur;
                kh.EtiketAdimiz = item.EtiketAd;
                YasamDongusuListesi.Add(kh);
            }
            EtiketleriDroplaraAt();
            DepartmanlariDroplaraAt();
            KullanıcılarıDroplaraAt();
            TalepleriDroplaraAt();
            YasamDongusuListeModel newModel = new YasamDongusuListeModel()
            {
                Filtreleme = new Filtreleme(),
                YasamDongusuListe = YasamDongusuListesi
            };
            return View(newModel);
        }
        [HttpPost]
        public ActionResult YasamaDongusuListele(string departmanlarim, string etiketlerim, string kullanıcılarim, string taleplerim, YasamDongusuListeModel filt)
        {
            if (filt.Filtreleme.DonguTarih1Filtre.Year < 1900)
                filt.Filtreleme.DonguTarih1Filtre = DateTime.Now.AddMonths(-1);
            if (filt.Filtreleme.DonguTarih2Filtre.Year < 1900)
                filt.Filtreleme.DonguTarih2Filtre = DateTime.Now;
            if (filt.Filtreleme.DonguTarih1Filtre > filt.Filtreleme.DonguTarih2Filtre)
                filt.Filtreleme.DonguTarih1Filtre = filt.Filtreleme.DonguTarih2Filtre;

            var YasamDongusuSorgu = from y in g.Dongus
                                    join d in g.Departmans on y.DepartmanID equals d.DepartmanID
                                    join e in g.Etikets    on y.EtiketID    equals e.EtiketID
                                    join k in g.Kullanicis on y.KullaniciID equals k.KullaniciID
                                    join t in g.Taleps     on y.TalepID     equals t.TalepID
                                    where y.TalepKayitTarih >= filt.Filtreleme.DonguTarih1Filtre && y.TalepKayitTarih <= filt.Filtreleme.DonguTarih2Filtre
                                    select new
                                    {
                                        y.DonguID,
                                        y.TalepBaslik,
                                        y.TalepKayitTarih,
                                        d.DepartmanAdi,
                                        d.DepartmanID,
                                        e.EtiketID,
                                        k.KullaniciID,
                                        t.TalepID,
                                        e.EtiketAd,
                                        k.KullaniciUserName,
                                        t.IstekTur
                                        
                                    };
            if (!String.IsNullOrEmpty(departmanlarim))
                YasamDongusuSorgu = YasamDongusuSorgu.Where(m => m.DepartmanID == int.Parse(departmanlarim));
            if (!String.IsNullOrEmpty(etiketlerim))
                YasamDongusuSorgu = YasamDongusuSorgu.Where(m => m.EtiketID == int.Parse(etiketlerim));
            if (!String.IsNullOrEmpty(kullanıcılarim))
                YasamDongusuSorgu = YasamDongusuSorgu.Where(m => m.KullaniciID == int.Parse(kullanıcılarim));
            if (!String.IsNullOrEmpty(taleplerim))
                YasamDongusuSorgu = YasamDongusuSorgu.Where(m => m.TalepID == int.Parse(taleplerim));
         
         

            List<YasamDongusuHelper> YasamDongusuListesi = new List<YasamDongusuHelper>();

            foreach (var item in YasamDongusuSorgu)
            {
                YasamDongusuHelper kh = new YasamDongusuHelper();
                kh.YasamDongusuNo = item.DonguID;
                kh.TalepBaslik = item.TalepBaslik;
                kh.Tarihimiz = item.TalepKayitTarih;
                kh.DepartmanAdimiz = item.DepartmanAdi;
                kh.KullaniciAdimiz = item.KullaniciUserName;
                kh.TalepAdimiz = item.IstekTur;
                kh.EtiketAdimiz = item.EtiketAd;
                YasamDongusuListesi.Add(kh);
            }
            EtiketleriDroplaraAt();
            DepartmanlariDroplaraAt();
            KullanıcılarıDroplaraAt();
            TalepleriDroplaraAt();
            YasamDongusuListeModel newModel = new YasamDongusuListeModel()
            {
                Filtreleme = filt.Filtreleme,
                YasamDongusuListe = YasamDongusuListesi
            };
            return View(newModel);
        }
        public ActionResult YasamDongusuSil(int YasamDonugusuNumara)
        {
            if (YasamDonugusuNumara != null)
            {
                Dongu k = g.Dongus.First(x => x.DonguID == YasamDonugusuNumara);
                g.Dongus.DeleteOnSubmit(k);
                g.SubmitChanges();
                ViewBag.silindi = "Yaşam döngüsü başarıyla silindi 2 sn sonra yönlendirileceksiniz";
                Response.AppendHeader("Refresh", "2;url=../Admin/YasamaDongusuListele");
                return View();
            }
            return View();
        }
        public ActionResult YasamDongusuDuzenle(int YasamDonugusuNumaraDuzenle)
        {
            ViewBag.duzenlendi = "";
            var YDuzenle = g.Dongus.First(x => x.DonguID == YasamDonugusuNumaraDuzenle);
            DepartmanUpdate(YDuzenle.DepartmanID);
            KullanıcılarUpdate(YDuzenle.KullaniciID);
            EtiketlerUpdate(YDuzenle.EtiketID);
            TaleplerUpdate(YDuzenle.TalepID);
            return View(YDuzenle);
        }
        [HttpPost, ValidateInput(false)]
        public ActionResult YasamDongusuDuzenle(Dongu y, FormCollection frm)
        {
            int dapartmanid = Convert.ToInt32(frm.Get("departmanlarim"));
            int etiketid = Convert.ToInt32(frm.Get("etiketlerim"));
            int kullanıcıid = Convert.ToInt32(frm.Get("kullanıcılarim"));
            int talepid = Convert.ToInt32(frm.Get("taleplerim"));

            if (ModelState.IsValid)
            {
                var myYasamDongusuNumara = g.Dongus.First(x => x.DonguID == y.DonguID);
                myYasamDongusuNumara.DonguID = y.DonguID;
                myYasamDongusuNumara.TalepBaslik = y.TalepBaslik;
                myYasamDongusuNumara.TalepKayitTarih = DateTime.Now;
                myYasamDongusuNumara.DepartmanID = dapartmanid;
                myYasamDongusuNumara.EtiketID = etiketid;
                myYasamDongusuNumara.KullaniciID = kullanıcıid;
                myYasamDongusuNumara.TalepID = talepid;

                g.SubmitChanges();
                DepartmanlariDroplaraAt();
                EtiketleriDroplaraAt();
                KullanıcılarıDroplaraAt();
                TalepleriDroplaraAt();
                ViewBag.duzenlendi = "Yaşam Döngüsü Düzenlendi";
                return View();
            }
            return View();
        }

    }
}
