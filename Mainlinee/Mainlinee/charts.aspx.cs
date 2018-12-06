using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainlinee
{
    public partial class charts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("Login2.aspx");
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Response.Redirect("Login2.aspx");
        }
    }
}