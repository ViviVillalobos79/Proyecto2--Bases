export class Administrador{
    cedula:number;
}

export class Curso{
    codigo_curso:string;
    nombre_curso:string;
    creditos:number;
    carrera:string;
    habilitado:string;
    administrador:number;
}

export class Grupo_Estudiante{
    id_grupo:number;
    carnet:number;
}

export class Grupo{
    id_grupo:number;
    numero:number;
    semestre:number;
    profesor:number;
}

export class Grupo_Carpeta{
    id_grupo:number;
    id_carpeta:number;
}

export class Semestre{
    id_semestre:number;
    periodo:string;
    ano:number;
    administrador:number;
}