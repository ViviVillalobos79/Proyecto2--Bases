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
    [Route("apis/profesor/documento")]
    public class DocumentoController : Controller
    {
        private readonly AppDbContext _context;

        public DocumentoController(AppDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IEnumerable<Documento> GetAllDocumentos()
        {
            return DocumentoRepositorio.GetAllDocumentos();
        }
        [HttpGet("{id_Documento}")]
        public IEnumerable<Documento> GetDocumento(int id_Documento)
        {
            return DocumentoRepositorio.GetDocumento(id_Documento);
        }

        [HttpPost]
        public bool PostDocumento([FromBody] Documento Documento)
        {
            return DocumentoRepositorio.PostDocumento(Documento);
        }
        [HttpPut("{id_Documento}")]
        public bool UpdateDocumento([FromBody] Documento Documento, int id_Documento)
        {
            return DocumentoRepositorio.UpdateDocumento(Documento, id_Documento);
        }

        [HttpDelete("{id_Documento}")]
        public bool DeleteDocumento(int id_Documento)
        {
            return DocumentoRepositorio.DeleteDocumento(id_Documento);
        }
    }
}
