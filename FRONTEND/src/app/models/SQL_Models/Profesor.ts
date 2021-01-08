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
    autor:string;
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