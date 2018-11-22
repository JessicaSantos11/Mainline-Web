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
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Response.Redirect("dashboard.aspx");
            }
        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            CnxSql cnxSql = new CnxSql();
            string sqlCommand = "INSERT INTO Usuario (nome, telefone, email, senha, isADM) VALUES (@nome, @telefone, @email, @senha, @isADM)";
            if (txtsenha.Text == txtconfSenha.Text)
            {
                using (cnxSql.cnx)
                {
                    cnxSql.cnx.Open();

                    SqlCommand cmd = new SqlCommand(sqlCommand, cnxSql.cnx);
                    cmd.Parameters.AddWithValue("@nome", txtnome.Text);
                    cmd.Parameters.AddWithValue("@telefone", txttelefone.Text);
                    cmd.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@senha", txtsenha.Text);
                    cmd.Parameters.AddWithValue("@isADM", isADM.Text);

                    cmd.ExecuteNonQuery();

                    Response.Redirect("Login2.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('As senhas devem ser iguais');</script>");
            }
        }
    }
}