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
        public int cadastroAtivo(String idAtivo, String idUsuario)
        {
            int cadastro = 0;
            //String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            CnxSql cnxSql = new CnxSql();
            using (cnxSql.cnx)
            {
                cnxSql.cnx.Open();
                String select = "insert into possui VALUES(@idAtivo,@idUsuario)";
                using (SqlCommand cmd = new SqlCommand(select, cnxSql.cnx))
                {

                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    cmd.Parameters.AddWithValue("@idUsuario", idUsuario);
                    if (cmd.ExecuteNonQuery()>0)
                    {
                        cadastro = 1;
                    }
                    else
                    {
                        cadastro = 0;
                    }

                }
                return cadastro;
            }
        }

        public List<Usuario> selectUsuario()
        {
            List<Usuario> lista = new List<Usuario>();
            Ativo ativo = new Ativo();
            //String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            CnxSql cnxSql = new CnxSql();
            using (cnxSql.cnx)
            {
                cnxSql.cnx.Open();
                String select = "select * from Usuario";
                using (SqlCommand cmd = new SqlCommand(select, cnxSql.cnx))
                {
                    
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            lista.Add(new Usuario()
                            {
                                idUser = int.Parse(reader["IDUSER"].ToString()),
                                nome = reader["nome"].ToString(),
                                telefone = reader["telefone"].ToString(),
                                isAdm = bool.Parse(reader["isADM"].ToString())
                        });

                            //ativo.nome = reader.GetString(1);

                            //lista.Add(ativo);  
                        }

                    }
                }
                return lista;
            }


        }



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