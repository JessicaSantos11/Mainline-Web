using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Mainlinee
{
    public class usuarioDAO
    {

        public Usuario selectId(String usuario, String senha)
        {
            
            CnxSql cnxSql = new CnxSql();
            string sqlCommand = "SELECT * FROM Usuario WHERE email = @email and senha = @senha";
            using (cnxSql.cnx)
            {
                cnxSql.cnx.Open();

                SqlCommand cmd = new SqlCommand(sqlCommand, cnxSql.cnx);

                cmd.Parameters.AddWithValue("@email", usuario);
                cmd.Parameters.AddWithValue("@senha", senha);

                SqlDataReader reader = cmd.ExecuteReader();

                Usuario user = new Usuario();
                if (reader.Read())
                {
                    
                    user.idUser = int.Parse(reader["IDUSER"].ToString());
                    user.nome = reader["nome"].ToString();
                    user.telefone = reader["telefone"].ToString();
                    user.isAdm = bool.Parse(reader["isADM"].ToString());
                    //Session["Usuario"] = user.idUser;

                    //Response.Redirect("dashboard.aspx");
                    
                }
                return user;
            }
            
        }

    }
}