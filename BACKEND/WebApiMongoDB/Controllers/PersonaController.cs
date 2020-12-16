using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiMongoDB.Data;
using WebApiMongoDB.Entidades;

namespace WebApiMongoDB.Controllers
{
    [Route("api/persona")]
    [ApiController]
    public class PersonaController : ControllerBase
    {
        private readonly PersonaDB _personaDB;

        public PersonaController(PersonaDB personaDB) {
            _personaDB = personaDB;
        }

        //Para traerse todos los datos de la base en mongo se utiliza el siguiente link
        // https://localhost:44371/api/persona
        [HttpGet]
        public ActionResult<List<Persona>> Get()
        {
            return Ok(_personaDB.Get());
        }

        //Para traerse datos de una persona por medio del identificador
        // https://localhost:44371/api/persona/702360598
        [HttpGet("{id}")]
        public ActionResult<Persona> GetbyId(int id)
        {
            var persona = _personaDB.GetbyId(id);

            if (persona == null)
            {
                return NotFound();
            }

            return Ok(persona);
        }

        //Para traerse datos de una persona por medio del identificador
        // https://localhost:44371/api/persona
        [HttpPost]
        public ActionResult<Persona> Create(Persona persona)
        {
            _personaDB.Create(persona);
            return Ok(_personaDB);// CreatedAtRoute("GetPersona", new { id = persona.Identificador.ToString() }, persona);
            
        }
        //Para actualizar datos de una persona por medio del identificador
        // https://localhost:44371/api/persona/702360598
        [HttpPut("{id}")]
        public IActionResult Update(int id, Persona persona)
        {
            var persona1 = _personaDB.GetbyId(id);

            if (persona1 == null)
            {
                return NotFound();
            }

            _personaDB.Update(id, persona);

            return NoContent();
        }

        //Para eliminar una persona por medio del identificador
        // https://localhost:44371/api/persona/702360598
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            var persona = _personaDB.GetbyId(id);

            if (persona == null)
            {
                return NotFound();
            }

            _personaDB.Remove(persona.Identificador);

            return NoContent();
        }
    }
}
