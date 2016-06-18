using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOWebOrg
{
    public partial class Yonetici : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetkiY"] == null ||
               (bool)(Session["yetkiY"]) != true)
            {
                Response.Redirect("Default.aspx");
            }
            MySqlConnection baglanti;
            MySqlCommand sqlkomut;
            String baglantistringi;
            baglantistringi = "Server=localhost;User Id=root; Password=matrix; Database=doweb; Pooling=false";
            baglanti = new MySqlConnection(baglantistringi);
            baglanti.Open();
            String sorgu;
            sorgu = "SELECT * FROM hasta ";
            MySqlDataReader dtReader;
            //MySqlDataReader dtReaderD;

            sqlkomut = new MySqlCommand(sorgu, baglanti);
            dtReader = sqlkomut.ExecuteReader();
            hasta.DataSource = dtReader;
            hasta.DataBind();
            
            //string sorguD;
            //sorguD = "SELECT * FROM doktor";
            //sqlkomut = new MySqlCommand(sorguD, baglanti);
            //dtReaderD = sqlkomut.ExecuteReader();
            //doktor.DataSource = dtReader;
            //doktor.DataBind();

            //dtReaderD.Close();
            dtReader.Close();
            dtReader = null;
            baglanti.Close();
            baglanti = null;

        }
    }
}