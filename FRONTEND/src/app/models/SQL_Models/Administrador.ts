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

export class SemestresAdministrador{
    ano:number;
    periodo:string;
}

export class CursoSemestre{
    codigo_curso:string;
    nombre_curso:string;
    creditos:number;
    carrera:string;
}

export class GruposCurso{
    codigo_curso:string;
    id_grupo:number;
    numero_grupo:number;
    profesor:number;
}

export class ProfesorSemestre{
    ano:number;
    periodo:string;
    cedula:number;
}

export class ProfesorCurso{
    codigo_curso:string;
    nombre_curso:string;
    cedula:number;
}