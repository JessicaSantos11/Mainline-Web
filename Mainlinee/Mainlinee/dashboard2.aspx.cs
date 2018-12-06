using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mainlinee
{
    public partial class dashboard2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("Login2.aspx");
            }

            if (!IsPostBack)
            {
                ColocarDados();
            }
        }




        private void ColocarDados()
        {

            oshiDAO oshi = new oshiDAO();
            List<Ativo> items = oshi.selectAtivo(Int32.Parse(Session["Usuario"].ToString()));

            

            int cont = 0;
            
            while (items.Count > cont)
            {
                DropList.Items.Insert(cont, new ListItem(items[cont].nome, items[cont].id));
                cont++;
            }

            
            DropList.DataBind();
        
        }
    }


    

}