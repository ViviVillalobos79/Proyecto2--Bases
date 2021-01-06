using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiSQLServer.Modelos;
using WebApiSQLServer.Repositorios.Administradores;

namespace WebApiSQLServer.Controllers.Administradores
{
    [Route("apis/administrador")]
    [ApiController]
    public class AdministradorController : ControllerBase
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
        public bool PostAdministrador(Administrador profesor)
        {
            return AdministradorRepositorio.PostAdministrador(profesor);
        }
        [HttpPut("{cedula}")]
        public bool UpdateAdministrador(Administrador profesor, int cedula)
        {
            return AdministradorRepositorio.UpdateAdministrador(profesor, cedula);
        }

        [HttpDelete("{cedula}")]
        public bool DeleteAdministrador(int cedula)
        {
            return AdministradorRepositorio.DeleteAdministrador(cedula);
        }
    }
}
