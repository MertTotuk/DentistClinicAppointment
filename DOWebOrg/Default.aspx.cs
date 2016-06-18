using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DOWebOrg
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void girisYap(object sender, EventArgs e)
        {
            int tcno = Int32.Parse(utc.Text);
            string sifresi = usifre.Text;
            MySqlConnection baglanti;

            String baglantistringi;
            baglantistringi = "Server=localhost;User Id=root; Password=matrix; Database=doweb; Pooling=false";
            baglanti = new MySqlConnection(baglantistringi);
            MySqlDataReader Reader;
            MySqlDataReader ReaderD;
            MySqlDataReader ReaderA;
            MySqlDataReader ReaderY;





            MySqlCommand cmd = new MySqlCommand("SELECT TCKNO,SIFRE FROM hasta WHERE TCKNO=@TCKNO and SIFRE=@SIFRE");
            MySqlCommand cmdD = new MySqlCommand("SELECT D_ID,SIFRE FROM doktor WHERE D_ID=@D_ID and SIFRE=@DSIFRE");
            MySqlCommand cmdA = new MySqlCommand("SELECT A_ID,SIFRE FROM asistan WHERE A_ID=@A_ID and SIFRE=@ASIFRE");
            MySqlCommand cmdY = new MySqlCommand("SELECT Y_ID,SIFRE FROM yonetici WHERE Y_ID=@Y_ID and SIFRE=@YSIFRE");




            cmd.Parameters.AddWithValue("@TCKNO", tcno);
            cmd.Parameters.AddWithValue("@SIFRE", sifresi);
            cmdD.Parameters.AddWithValue("@D_ID", tcno);
            cmdD.Parameters.AddWithValue("@DSIFRE", sifresi);
            cmdA.Parameters.AddWithValue("@A_ID", tcno);
            cmdA.Parameters.AddWithValue("@ASIFRE", sifresi);
            cmdY.Parameters.AddWithValue("@Y_ID", tcno);
            cmdY.Parameters.AddWithValue("@YSIFRE", sifresi);


            cmd.Connection = baglanti;
            cmdD.Connection = baglanti;
            cmdA.Connection = baglanti;
            cmdY.Connection = baglanti;


            baglanti.Open();
            Reader = cmd.ExecuteReader();
            Reader.Read();
            if (Reader.HasRows)
            {
                Session["yetki"] = true;

                Response.Redirect("Randevu.aspx");
                //hasta giriş sonrası sayfaya yönlendir.
            }
            Reader.Close();
            ReaderD = cmdD.ExecuteReader();
            ReaderD.Read();
            if (ReaderD.HasRows)
            {
                Session["yetkiD"] = true;
                Session["yetki"] = true;
                Session["yetkiA"] = true;
                Response.Redirect("Doktor.aspx");

                //doktor girişi
            }
            ReaderD.Close();
            ReaderA = cmdA.ExecuteReader();
            ReaderA.Read();
            if (ReaderA.HasRows)
            {
                Session["yetkiA"] = true;
                Session["yetki"] = true;
                Response.Redirect("Asistan.aspx");

                //asistan girişi
            }
            ReaderA.Close();
            ReaderY = cmdY.ExecuteReader();
            ReaderY.Read();
            if (ReaderY.HasRows)
            {
                Session["yetkiY"] = true;
                Session["yetkiD"] = true;
                Session["yetki"] = true;
                Session["yetkiA"] = true;
                Response.Redirect("Yonetici.aspx");

                //yönetici girişi
            }
            ReaderY.Close();


            Response.Redirect("Default.aspx");
            //hatalı giriş tekrar deneyiniz yazdır.
            baglanti.Close();

        }
        
        protected void yeniKayit(Object sender, EventArgs e)
        {
            int tcno = Int32.Parse(tc.Text);
            string adi = ad.Text;
            string soyadi = soyad.Text;
            string sifresi = sifre.Text;
            string email = mail.Text;
            int yasi = Int32.Parse(yas.Text);
            int telefon = Int32.Parse(tel.Text);
            MySqlConnection baglanti;

            String baglantistringi;
            baglantistringi = "Server=localhost;User Id=root; Password=matrix; Database=doweb; Pooling=false";
            baglanti = new MySqlConnection(baglantistringi);


            MySqlCommand cmd = new MySqlCommand("INSERT INTO hasta (TCKNO, AD, SOYAD, SİFRE, YAS, TEL, EMAIL) VALUES (@TCKNO, @AD, @SOYAD, @SİFRE, @YAS, @TEL, @EMAIL)");


            cmd.Parameters.AddWithValue("@TCKNO", tcno);
            cmd.Parameters.AddWithValue("@AD", adi);
            cmd.Parameters.AddWithValue("@SOYAD", soyadi);
            cmd.Parameters.AddWithValue("@SİFRE", sifresi);
            cmd.Parameters.AddWithValue("@YAS", yasi);
            cmd.Parameters.AddWithValue("@TEL", telefon);
            cmd.Parameters.AddWithValue("@EMAIL", email);
            cmd.Connection = baglanti;
            baglanti.Open();

            cmd.ExecuteNonQuery();
            baglanti.Close();







        }
    }
}