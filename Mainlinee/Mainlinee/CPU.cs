using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Mainlinee
{
    public class CPU
    {
        public int threads { get; set; }
        public int processos { get; set; }
        public long interrupcoes { get; set; }
        public String versaoCPU { get; set; }
        public String tempoAtividadeCPU { get; set; }
        public String dia { get; set; }
        public String hora { get; set; }
    }
}