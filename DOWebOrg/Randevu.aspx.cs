using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOWebOrg
{
    public partial class Randevu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"] == null ||
               (bool)(Session["yetki"]) != true)
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
            sqlkomut = new MySqlCommand(sorgu, baglanti);
            dtReader = sqlkomut.ExecuteReader();
            GridView1.DataSource = dtReader;
            GridView1.DataBind();
            dtReader.Close();
            dtReader = null;
            baglanti.Close();
            baglanti = null;
            
        }
        protected void cikis(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

    }
}