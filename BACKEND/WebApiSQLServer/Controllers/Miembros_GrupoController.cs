using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiSQLServer.Controllers
{
    public class Miembros_GrupoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
