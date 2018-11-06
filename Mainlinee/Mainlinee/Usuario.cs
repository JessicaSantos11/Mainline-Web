using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mainlinee
{
    public class Usuario
    {
        public int idUser { get; set; }
        public string nome { get; set; }
        public string telefone { get; set; }
        public string email { get; set; }
        public string senha { get; set; }
        public bool isAdm { get; set; }
    }
}