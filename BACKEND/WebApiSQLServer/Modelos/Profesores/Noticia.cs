﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Modelos.Profesores
{
    public class Noticia
    {
        public int id_noticia { get; set; }
        public string titulo { get; set; }
        public string autor { get; set; }
        public string fecha { get; set; }
        public string mensaje { get; set; }
        public int grupo { get; set; }
    }
}
