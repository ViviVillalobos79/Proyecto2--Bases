import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { CursosProfesor } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { EstudianteService } from '../../services/sql_services/Estudiantes/estudiante.service';
import { CursosEstudiante } from 'src/app/models/SQL_Models/Estudiante';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css'],
  providers: [ProfesorService,EstudianteService],
})
export class InicioComponent implements OnInit {
  username: string;
  rol: string;

  cursos = [];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private estudianteSvc:EstudianteService
  ) {
    this.username = this._route.snapshot.paramMap.get('username');
  }

  visitarCurso(id) {
    //Visitar la carpeta
    if (this.rol == 'profesor') {
      this.router.navigate(['gesDocProfe', this.username, id]);
    }

    if (this.rol == 'estudiante') {
      this.router.navigate(['gesDocEst', this.username, id]);
    }
  }

  ngOnInit(): void {
    this.cursos = [];
    //Solicitar cursos
    if (this.username.length == 9) {
      this.rol = 'profesor';
      this.getCursosProfe();
    }
    if (this.username.length == 10) {
      this.rol = 'estudiante';
      this.getCursosEstudiante();
    }
  }

  getCursosProfe() {
    this.profesorSvc.getCursosProfesor(this.username).subscribe((res) => {
      console.log('Res ', res);
      this.setCursosProfe(res);
    });
  }
 //Hola comentario
  setCursosProfe(cursosP: CursosProfesor[]) {
    this.cursos = [];
    cursosP.forEach((element) => {
      let elemento = { nombre: element.nombre_curso, id: element.id_grupo };
      this.cursos.push(elemento);
    });
  }

  getCursosEstudiante() {
    this.estudianteSvc.getCursosEstudiante(this.username).subscribe((res) => {
      console.log('Res ', res);
      this.setCursosEst(res);
    });
  }

  setCursosEst(cursosP: CursosEstudiante[]) {
    this.cursos = [];
    cursosP.forEach((element) => {
      let elemento = { nombre: element.nombre_curso, id: element.id_grupo };
      this.cursos.push(elemento);
    });
  }

  goInicio() {
    this.router.navigate(['inicio', this.username]);
  }

  goCursos() {
    this.router.navigate(['inicio', this.username]);
  }

  goPerfil() {
    this.router.navigate(['profile', this.username]);
  }
}
