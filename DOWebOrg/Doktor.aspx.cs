using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOWebOrg
{
    public partial class Doktor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetkiD"] == null ||
               (bool)(Session["yetkiD"]) != true)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}