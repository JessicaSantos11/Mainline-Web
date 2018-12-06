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
                ColocarDadosAtivo();
                ColocarDadosUsuario();
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Response.Redirect("Login2.aspx");
        }


        private void ColocarDadosAtivo()
        {

            oshiDAO oshi = new oshiDAO();
            List<Ativo> items = oshi.selectAtivo2();

            int cont = 0;
            
            while (items.Count > cont)
            {
                DropDownListAtivo.Items.Insert(cont, new ListItem(items[cont].id, items[cont].id));
                cont++;
            }


            DropDownListAtivo.DataBind();
        
        }

        private void ColocarDadosUsuario()
        {

            usuarioDAO usuario = new usuarioDAO();
            List<Usuario> items = usuario.selectUsuario();
            



            int cont = 0;

            while (items.Count > cont)
            {
                DropDownListUsuario.Items.Insert(cont, new ListItem(items[cont].nome, items[cont].idUser.ToString()));
                cont++;
            }


            DropDownListUsuario.DataBind();

        }

        protected void btn_cadastrar(object sender, EventArgs e)
        {

            usuarioDAO usuario = new usuarioDAO();
            oshiDAO oshi = new oshiDAO();
            int cadastro = 0;
            bool tem_cadastro = false;
            int cont = 0;

            while (oshi.selectAtivo(Int32.Parse(DropDownListUsuario.SelectedItem.Value)).Count>cont)
            {
                if(oshi.selectAtivo(Int32.Parse(DropDownListUsuario.SelectedItem.Value))[cont].id == DropDownListAtivo.SelectedItem.Value)
                {
                    tem_cadastro = true;
                    break;
                }
                cont++;
            }
            
            
            if(tem_cadastro == false)
            {
                cadastro = usuario.cadastroAtivo(DropDownListAtivo.SelectedItem.Value, DropDownListUsuario.SelectedItem.Value);
                if (cadastro>0)
                {
                    Response.Write("<script>alert('Cadastrado com sucesso')</script>");
                    //Response.Redirect("dashboard2.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Falha no Cadastro')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Usuario já possui este ativo')</script>");
            }


        }
    }
}