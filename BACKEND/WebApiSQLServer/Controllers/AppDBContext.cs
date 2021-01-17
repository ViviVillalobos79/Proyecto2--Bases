using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Modelos.Profesores;

namespace WebApiSQLServer.Controllers
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }
        
        public DbSet<Estudiante> Estudiante { get; set; }
        public DbSet<Profesor> Profesor { get; set; }
        public DbSet<Administrador> Administrador { get; set;}
        public DbSet<Carpeta> Carpeta { get; set; }
        public DbSet<Documento> Documento { get; set; }
        public DbSet<Noticia> Noticia { get; set; }
        public DbSet<Entregable> Entregable { get; set; }
        public DbSet<Rubro> Rubro { get; set; }
        public DbSet<Evaluacion> Evaluacion { get; set; }
    }
}
