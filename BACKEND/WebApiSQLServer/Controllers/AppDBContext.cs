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
        
        public DbSet<Estudiante> Estudiante { get; set; }
        public DbSet<Profesor> Profesor { get; set; }
        public DbSet<Administrador> Administrador { get; set;}


    }
}
