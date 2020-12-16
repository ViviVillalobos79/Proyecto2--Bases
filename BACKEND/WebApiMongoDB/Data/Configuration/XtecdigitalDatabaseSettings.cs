using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApiMongoDB.Data.Configuration
{
    public class XTecDigitalMongoDBSettings : IXTecDigitalMongoDBSettings
    {
        public string PersonaCollectionName { get; set; }
        public string ConnectionString { get; set; }
        public string DatabaseName { get; set; }
    }

    public interface IXTecDigitalMongoDBSettings
    {
        string PersonaCollectionName { get; set; }
        string ConnectionString { get; set; }
        string DatabaseName { get; set; }
    }
}
