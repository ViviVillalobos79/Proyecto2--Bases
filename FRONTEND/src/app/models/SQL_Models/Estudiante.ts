export class Estudiante{
    carnet:number;
}

export class CursosEstudiante {
    nombre_curso:string;
    numero_grupo:number;
    periodo:string;
    ano:number;
}

//Retorna lista de noticias de todos los cursos 
export class NoticiasGenerales {
    titulo:string;
    fecha:string;
    mensaje:string;
}

//Noticias Especificas de un grupo al que pertenece
export class NotaGrupoEstudiante {
    especificacion:string;
    nota:number;
    id_rubro:number;
    porcentaje:number;
}