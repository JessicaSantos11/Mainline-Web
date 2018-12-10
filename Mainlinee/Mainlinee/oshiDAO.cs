using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Mainlinee
{
    public class oshiDAO
    {

        public List<Ativo> selectAtivo2()
        {
            List<Ativo> lista = new List<Ativo>();
            Ativo ativo = new Ativo();
            //String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            CnxSql cnxSql = new CnxSql();
            using (cnxSql.cnx)
            {
                cnxSql.cnx.Open();
                String select = "select * from ativo;";
                using (SqlCommand cmd = new SqlCommand(select, cnxSql.cnx))
                {
                    
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            lista.Add(new Ativo()
                            {
                                id = reader.GetString(0),
                                //nome = reader.GetString(1)
                            });

                            //ativo.nome = reader.GetString(1);

                            //lista.Add(ativo);  
                        }

                    }
                }
                return lista;
            }


        }

        public Ativo selectAtivoById(String idAtivo)
        {
            Ativo ativo = new Ativo();
            //String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            CnxSql cnxSql = new CnxSql();
            using (cnxSql.cnx)
            {
                cnxSql.cnx.Open();
                String select = "select * from ativo where idAtivo = @idAtivo;";
                using (SqlCommand cmd = new SqlCommand(select, cnxSql.cnx))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {

                            ativo.id = reader.GetString(0);
                            ativo.nome = reader.GetString(1);
                            ativo.SO = reader.GetString(2);
                            

                            //ativo.nome = reader.GetString(1);

                            //lista.Add(ativo);  
                        }

                    }
                }
                return ativo;
            }


        }


        public List<Ativo> selectAtivo(int idUser)
        {
            List<Ativo> lista = new List<Ativo>();
            Ativo ativo = new Ativo();
            //String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            CnxSql cnxSql = new CnxSql();
            using (cnxSql.cnx)
            {
                cnxSql.cnx.Open();
                String select = "select p.IDPOSSUI,p.IDATIVO,a.NOMEATIVO from possui as p , ativo as a Where p.IDUSER = @id and a.idAtivo = p.idAtivo order by p.IDATIVO desc";
                using (SqlCommand cmd = new SqlCommand(select, cnxSql.cnx))
                {
                    cmd.Parameters.AddWithValue("@id", idUser);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            lista.Add(new Ativo()
                            {
                                idPossui = reader.GetInt32(0),
                                id = reader.GetString(1),
                                nome = reader.GetString(2)
                            });

                            //ativo.nome = reader.GetString(1);

                            //lista.Add(ativo);  
                        }

                    }
                }
                return lista;
            }


        }

        public static int selectRam()
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoRAM from infoRAM order by IDRAM desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoRAM"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public static int selectCPU()
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoCPU from infoCPU order by IDCPU desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoCPU"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public RAM selectEspacoRAM(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            RAM ram = new RAM();

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 MemoriaTotal,MemoriaDisponivel,MemoriaUsada from infoRAM where idativo = @idAtivo order by IDRAM desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {
                            ram.memoriaTotal = reader.GetString(0);
                            ram.memoriaDisponivel = reader.GetString(1);
                            ram.memoriaUsada = reader.GetString(2);
                        }
                    }
                    return ram;
                }
            }
        }

        public Hd selectEspacoHd(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            Hd hd = new Hd();

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 EspacoTotal,EspacoDisponivel,EspacoUsado from infoHD where idativo = @idAtivo order by IDHD desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {
                            hd.espacoTotal = reader.GetString(0);
                            hd.espacoDisponivel = reader.GetString(1);
                            hd.espacoUsado = reader.GetString(2);
                        }
                    }
                    return hd;
                }
            }
        }

        public CPU selectCapacidadeCPU(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            CPU cpu = new CPU();

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 THREADS, Processos, Interrupcoes, VersaoCpu, tempoAtividade from infocpu where idativo = @idAtivo order by IDCPU desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {
                            cpu.threads = reader.GetInt32(0);
                            cpu.processos = reader.GetInt32(1);
                            cpu.interrupcoes = reader.GetInt64(2);
                            cpu.versaoCPU = reader.GetString(3);
                            cpu.tempoAtividadeCPU = reader.GetString(4);
                        }
                    }
                    return cpu;
                }
            }
        }

        public CPU selectData(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            CPU cpu = new CPU();

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 dia,hora from infocpu where idativo = @idAtivo order by IDCPU desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {
                            cpu.dia = reader.GetString(0);
                            cpu.hora = reader.GetString(1);
                            
                        }
                    }
                    return cpu;
                }
            }
        }

        public Rede selectRede(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            Rede rede = new Rede();

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 DominioRede,NomeRede,upload,download from inforede where idativo = @idAtivo order by IDREDE desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {
                            rede.Dominio = reader.GetString(0);
                            rede.Nome = reader.GetString(1);
                            rede.Upload = float.Parse(reader["upload"].ToString());
                            rede.Download = float.Parse(reader["download"].ToString());

                        }
                    }
                    return rede;
                }
            }
        }

        public static int selectHD()
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoHD from infoHD order by IDHD desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoHD"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public int selectRam2(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoRAM from infoRAM  where idativo = @idAtivo order by IDRAM desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoRAM"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public int selectCPU2(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoCPU from infoCPU  where idativo = @idAtivo order by IDCPU desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read() == true)
                        {

                            return (int)float.Parse(reader["infoCPU"].ToString());

                        }
                        else
                        {
                            return 0;
                        }
                    }
                }
            }
        }

        public int selectHD2(String idAtivo)
        {
            String connection = "Server=tcp:lol-2018.database.windows.net,1433;Initial Catalog=ADS 2018;Persist Security Info=False;User ID=jessicasantos;Password=Corinthians11;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connection))
            {
                conn.Open();
                String select = "select top 1 infoHD from infoHD where idativo = @idAtivo order by IDHD desc";
                using (SqlCommand cmd = new SqlCommand(select, conn))
                {
                    cmd.Parameters.AddWithValue("@idAtivo", idAtivo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        

                        if (reader.Read())
                        {
                            

                            //return (int)float.Parse(reader["infoHD"].ToString());


                            return (int)float.Parse(reader["infoHD"].ToString());


       
                            
                        }
                        else
                        {
                            return 2;
                        }
                        //return hd;

                    }
                }
            }
        }

        //metodo para pegar a porcentagem do banco

        public static string getNumeros(String ativo)
        {
            //cria a string q vai guardar os dados do bando
            string text = "";


            //chama os metodos e retorna o valor deles dentro da string
            text += new oshiDAO().selectRam2(ativo) + "+";
            text += new oshiDAO().selectCPU2(ativo) + "+";
            text += new oshiDAO().selectHD2(ativo);

            //cria uma variavel q corta a string text e coloca eles dentro de um array
            string[] textSplit = text.Split('+');


            int c = 0;
            //while para percorrer o array
            while (c < textSplit.Length)
            {
                //verica se tem algum dado vazio
                if (textSplit[c] == "")
                {
                    return "";
                }
                c++;
            }


            return text;
        }

        public static string getHD(String ativo)
        {
            //cria a string q vai guardar os dados do bando
            string text = "";


            //chama os metodos e retorna o valor deles dentro da string
            text += new oshiDAO().selectEspacoHd(ativo).espacoTotal + "+";
            text += new oshiDAO().selectEspacoHd(ativo).espacoDisponivel + "+";
            text += new oshiDAO().selectEspacoHd(ativo).espacoUsado;

            //cria uma variavel q corta a string text e coloca eles dentro de um array
            string[] textSplit = text.Split('+');


            int c = 0;
            //while para percorrer o array
            while (c < textSplit.Length)
            {
                //verica se tem algum dado vazio
                if (textSplit[c] == "")
                {
                    return "";
                }
                c++;
            }


            return text;
        }

        public static string getCPU(String ativo)
        {
            //cria a string q vai guardar os dados do bando
            string text = "";


            //chama os metodos e retorna o valor deles dentro da string
            text += new oshiDAO().selectCapacidadeCPU(ativo).threads + "+";
            text += new oshiDAO().selectCapacidadeCPU(ativo).processos + "+";
            text += new oshiDAO().selectCapacidadeCPU(ativo).interrupcoes + "+";
            text += new oshiDAO().selectCapacidadeCPU(ativo).versaoCPU + "+";
            text += new oshiDAO().selectCapacidadeCPU(ativo).tempoAtividadeCPU;

            //cria uma variavel q corta a string text e coloca eles dentro de um array
            string[] textSplit = text.Split('+');


            int c = 0;
            //while para percorrer o array
            while (c < textSplit.Length)
            {
                //verica se tem algum dado vazio
                if (textSplit[c] == "")
                {
                    return "";
                }
                c++;
            }


            return text;
        }

        public static string getTime(String ativo)
        {
            //cria a string q vai guardar os dados do bando
            string text = "";


            //chama os metodos e retorna o valor deles dentro da string
            text += new oshiDAO().selectData(ativo).dia + "+";    
            text += new oshiDAO().selectData(ativo).hora;

            //cria uma variavel q corta a string text e coloca eles dentro de um array
            string[] textSplit = text.Split('+');


            int c = 0;
            //while para percorrer o array
            while (c < textSplit.Length)
            {
                //verica se tem algum dado vazio
                if (textSplit[c] == "")
                {
                    return "";
                }
                c++;
            }


            return text;
        }

        public static string getRAM(String ativo)
        {
            //cria a string q vai guardar os dados do bando
            string text = "";


            //chama os metodos e retorna o valor deles dentro da string
            text += new oshiDAO().selectEspacoRAM(ativo).memoriaTotal + "+";
            text += new oshiDAO().selectEspacoRAM(ativo).memoriaDisponivel + "+";
            text += new oshiDAO().selectEspacoRAM(ativo).memoriaUsada;

            //cria uma variavel q corta a string text e coloca eles dentro de um array
            string[] textSplit = text.Split('+');


            int c = 0;
            //while para percorrer o array
            while (c < textSplit.Length)
            {
                //verica se tem algum dado vazio
                if (textSplit[c] == "")
                {
                    return "";
                }
                c++;
            }


            return text;
        }

        public static string getRede(String ativo)
        {
            //cria a string q vai guardar os dados do bando
            string text = "";


            //chama os metodos e retorna o valor deles dentro da string
            text += new oshiDAO().selectRede(ativo).Dominio + "+";
            text += new oshiDAO().selectRede(ativo).Nome + "+";
            text += new oshiDAO().selectRede(ativo).Upload + "+";
            text += new oshiDAO().selectRede(ativo).Download;

            //cria uma variavel q corta a string text e coloca eles dentro de um array
            string[] textSplit = text.Split('+');


            int c = 0;
            //while para percorrer o array
            while (c < textSplit.Length)
            {
                //verica se tem algum dado vazio
                if (textSplit[c] == "")
                {
                    return "";
                }
                c++;
            }


            return text;
        }
    }
}
