using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Repositorios;

namespace WebApiSQLServer.Controllers
{
    [Route("apis/administrador")]
    public class AdministradorController : Controller
    {
        private readonly AppDbContext _context;

        public AdministradorController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Administrador> GetAllAdministradores()
        {
            return AdministradorRepositorio.GetAllAdministradores();
        }
        [HttpGet("{cedula}")]
        public IEnumerable<Administrador> GetAdministrador(int cedula)
        {
            return AdministradorRepositorio.GetAdministrador(cedula);
        }

        [HttpPost]
        public bool PostAdministrador([FromBody] Administrador admin)
        {
            return AdministradorRepositorio.PostAdministrador(admin);
        }
        [HttpPut("{cedula}")]
        public bool UpdateAdministrador([FromBody] Administrador admin, int cedula)
        {
            return AdministradorRepositorio.UpdateAdministrador(admin, cedula);
        }

        [HttpDelete("{cedula}")]
        public bool DeleteAdministrador(int cedula)
        {
            return AdministradorRepositorio.DeleteAdministrador(cedula);
        }
    }
}
