using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApiMongoDB.Data.Configuration;
using WebApiMongoDB.Entidades;

namespace WebApiMongoDB.Data
{
    public class PersonaDB
    {
        private readonly IMongoCollection<Persona> _personaCollection;
        public PersonaDB(IXTecDigitalMongoDBSettings settings)
        {
            var mdbClient = new MongoClient(settings.ConnectionString);
            var database = mdbClient.GetDatabase(settings.DatabaseName);

            _personaCollection = database.GetCollection<Persona>(settings.PersonaCollectionName);
        }

        //Traerse todas las personas
        public List<Persona> Get()
        {
            return _personaCollection.Find(persona => true).ToList();
        }
        //Traerse una persona por número de cedula o carné
        public Persona GetbyId(int id)
        {
            return _personaCollection.Find<Persona>(persona => persona.Identificador == id).FirstOrDefault();
        }
        // Crear una nueva persona en la base
        public Persona Create(Persona persona)
        {
            _personaCollection.InsertOne(persona);
            return persona;
        }

        //Actualizar datos de una persona
        public void Update(int id, Persona persona) =>
            _personaCollection.ReplaceOne(persona => persona.Identificador == id, persona);

        //Eliminar una persona por id
        public void Remove(int id) =>
            _personaCollection.DeleteOne(persona => persona.Identificador == id);
        
        //Retornar lista de todos los estudiantes en el sistema 
        public List<Persona> SeleccionarEstudiante() {
            return _personaCollection.Find(persona => persona.Tipo_Persona == "Estudiante").ToList();
        }
        //Retornar lista de todos los profesores en el sistema
        public List<Persona> SeleccionarProfesores()
        {
            return _personaCollection.Find(persona => persona.Tipo_Persona == "Profesor").ToList();
        }
        //Retorna lista de todos los administradores en el sistema
        public List<Persona> SeleccionarAdministradores()
        {
            return _personaCollection.Find(persona => persona.Tipo_Persona == "Administrador").ToList();
        }
        
    }
}
