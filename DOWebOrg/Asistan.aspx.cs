using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DOWebOrg
{
    public partial class Asistan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetkiA"] == null ||
               (bool)(Session["yetkiA"]) != true)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}