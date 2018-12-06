using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Mainlinee
{
    public partial class Login2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            /*
            if (Session["Usuario"] != null)
            {
                Response.Redirect("dashboard2.aspx");
            }*/
        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            Usuario user = new Usuario();
            user.email = txtEmail.Text;
            user.senha = txtSenha.Text;

            CnxSql cnxSql = new CnxSql();
            string sqlCommand = "SELECT * FROM Usuario WHERE email = @email and senha = @senha";
            using (cnxSql.cnx)
            {
                cnxSql.cnx.Open();

                SqlCommand cmd = new SqlCommand(sqlCommand, cnxSql.cnx);

                cmd.Parameters.AddWithValue("@email", user.email);
                cmd.Parameters.AddWithValue("@senha", user.senha);

                SqlDataReader reader = cmd.ExecuteReader();


                if (reader.Read())
                {

                    user.idUser = int.Parse(reader["IdUser"].ToString());
                    user.nome = reader["nome"].ToString();
                    user.telefone = reader["telefone"].ToString();
                    user.isAdm = bool.Parse(reader["isADM"].ToString());
                    Session["Usuario"] = user.idUser;
                    Session["nomeUser"] = user.nome;

                    Response.Redirect("dashboard2.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Login Inválido')</script>");
                }
            }
        }
    }
}