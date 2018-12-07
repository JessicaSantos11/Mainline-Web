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
                ColocarDadosAtivo2();
                ColocarDadosUsuario2();

                if (Request.QueryString["idMaquina"] != null && Request.QueryString["idMaquina"] != null)
                {

                    if (Request.Params["modo"]=="Excluir")
                    {
                        String idMaquina = Request.Params["idMaquina"];
                        String idUser = Request.Params["idUser"];
                        usuarioDAO usuario = new usuarioDAO();
                        if (usuario.excluirAtivo(idMaquina.ToString(), idUser.ToString()) > 0)
                        {
                            Response.Write("<script>alert('Ativo excluido com sucesso')</script>");
                            Response.Redirect("Dashboard2.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Erro ao excluir')</script>");
                        }
                    }else if(Request.Params["modo"] == "Editar")
                    {
                        String id = Request.Params["idMaquina"];
                        usuarioDAO usuario = new usuarioDAO();
                    }
                    
                }

                
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

        private void ColocarDadosAtivo2()
        {

            oshiDAO oshi = new oshiDAO();
            List<Ativo> items = oshi.selectAtivo2();

            int cont = 0;

            while (items.Count > cont)
            {
                DropDownListAtivo2.Items.Insert(cont, new ListItem(items[cont].id, items[cont].id));
                cont++;
            }


            DropDownListAtivo2.DataBind();

        }

        private void ColocarDadosUsuario2()
        {

            usuarioDAO usuario = new usuarioDAO();
            List<Usuario> items = usuario.selectUsuario();

            int cont = 0;

            while (items.Count > cont)
            {
                DropDownListUsuario2.Items.Insert(cont, new ListItem(items[cont].nome, items[cont].idUser.ToString()));
                cont++;
            }


            DropDownListUsuario2.DataBind();

        }

        protected void btn_cadastrar(object sender, EventArgs e)
        {

            usuarioDAO usuario = new usuarioDAO();
            oshiDAO oshi = new oshiDAO();
            int cadastro = 0;
            int cadastro2 = 0;
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
                cadastro2 = usuario.cadastroNome(DropDownListAtivo.SelectedItem.Value, txt_nome_maquina.Text);
                if (cadastro>0 && cadastro2>0)
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