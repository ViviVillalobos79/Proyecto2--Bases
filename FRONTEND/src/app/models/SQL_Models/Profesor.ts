export class Profesor{
    cedula:number;
}

export class Carpeta{
    id_carpeta:number;
    nombre:string;
    fecha:string;
}

export class Documento{
    id_documento:number;
    tamano:number;
    fecha:string;
    nombre_documento:string;
    carpeta:number;
}

export class Entregable{
    id_entregable:number;
    id_evaluacion:number;
    observaciones:string;
    nota:number;
    fecha_entrega:string;
    docu_estudiante:string;
    docu_profesor:string;
}

export class Evaluacion{
    id_evaluacion:number;
    tipo_evaluacion:string;
    especificacion:string;
    fecha:string;
    hora:string;
    rubro:number;
    grupo:number;
}

export class Miembros_Grupo{
    id_entregable:number;
    carnet:number;
}

export class Noticia{
    id_noticia:number;
    titulo:string;
    autor:number;
    fecha:string;
    mensaje:string;
    grupo:number;
}

export class Rubro{
    id_rubro:number;
    nombre_rubro:string;
    porcentaje:number;
    grupo:number;
}

export class EstudiantesMatriculados
{
    numero_grupo:number;
    codigo_curso:string;
    carnet:number;
}

export class CursosProfesor {
    codigo_curso:string;
    nombre_curso:string;
    id_grupo:number;
}

export class DocumentosCarpeta {
    id_documento:number;
    nombre_documento:string;
    tamano:number;
    fecha:string;
}

//Lista de carpetas en un grupo
export class CarpetasGrupo {
    id_carpeta:number;
    nombre:string;
}

export class ReporteNotas{
    carnet:number;
    especificacion:string;
    nota:number;
    id_rubro:number;
    nombre_rubro:string;
    porcentaje:number;
}

export class Datos_Curso {
    nombre_curso:string;
    codigo_curso:string;
    numero_grupo:number;
}

export class SP_grupo_carpetas {
  id_grupo:number;
  nombre:string;
}
