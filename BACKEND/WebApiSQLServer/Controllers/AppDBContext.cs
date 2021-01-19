using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;


namespace WebApiSQLServer.Controllers
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }
        public DbSet<Administrador> Administrador { get; set; }
        public DbSet<Carpeta> Carpeta { get; set; }
        public DbSet<Curso> Curso { get; set; }
        public DbSet<Documento> Documento { get; set; }
        public DbSet<Entregable> Entregable { get; set; }
        public DbSet<Estudiante> Estudiante { get; set; }
        public DbSet<Evaluacion> Evaluacion { get; set; }
        public DbSet<Grupo> Grupo { get; set; }
        public DbSet<Miembros_Grupo> Miembros_Grupo { get; set; }
        public DbSet<Noticias> Noticia { get; set; }
        public DbSet<Profesor> Profesor { get; set; }
        public DbSet<Rubro> Rubro { get; set; }
    }
}
