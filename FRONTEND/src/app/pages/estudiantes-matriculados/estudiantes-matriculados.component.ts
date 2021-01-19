import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Persona } from 'src/app/models/Persona';
import { Datos_Curso, EstudiantesMatriculados } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { PersonaService } from '../../services/mongo/persona.service';

@Component({
  selector: 'app-estudiantes-matriculados',
  templateUrl: './estudiantes-matriculados.component.html',
  styleUrls: ['./estudiantes-matriculados.component.css'],
  providers: [ProfesorService, PersonaService],
})
export class EstudiantesMatriculadosComponent implements OnInit {
  username: string;
  nombrecurso: string;
  grupo: string;
  idCurso: string;

  personas: Persona[] = [];

  valco = [];
  curso: Datos_Curso;
  carnets = [];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private personaSvc: PersonaService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
      console.log('Res ', this.curso);
      this.getCarnets();
    });
  }

  getCarnets() {
    this.profesorSvc
      .getEstudiantesMatriculados(this.idCurso)
      .subscribe((res) => {
        console.log('Estudaintes ', res);
        this.setCarnets(res);
      });
  }

  setCarnets(estudiantes: EstudiantesMatriculados[]) {
    let carnets = ['Carnets'];
    estudiantes.forEach((element) => {
      carnets.push(element.carnet.toString());
      this.carnets.push(element.carnet.toString());
    });
    let values = { valores: carnets };
    //this.val.push(values);
    this.valco.push(values);
    this.getNombres();
  }

  getNombres() {
    console.log('hola', this.carnets);

    this.personaSvc.getAll().subscribe((res) => {
      //console.log('Persona ', res);
      this.personas = res;
      this.setNombres();
    });
  }

  setNombres() {
    let nombres = ['Nombre'];
    this.carnets.forEach((element) => {
      this.personas.forEach((element2) => {
        if (element == element2.identificador.toString()) {
          nombres.push(
            element2.primer_Nombre +
              ' ' +
              element2.apellido1 +
              ' ' +
              element2.apellido2
          );
        }
      });
    });

    let values = { valores: nombres };
    this.valco.push(values);
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

  goDocs() {
    this.router.navigate(['gesDocProfe', this.username, this.idCurso]);
  }

  goEvaluaciones() {
    this.router.navigate(['gesEvaluaciones', this.username, this.idCurso]);
  }

  goNoticias() {
    this.router.navigate(['noticiaProfe', this.username, this.idCurso]);
  }

  goMatriz() {
    this.router.navigate(['matrizEvaluaciones', this.username, this.idCurso]);
  }

  goRubros() {
    this.router.navigate(['rubrosProfe', this.username, this.idCurso]);
  }
  goDetalles() {}

  goEstudiantes() {
    this.router.navigate(['estudiantesMatriculados', this.username, this.idCurso]);
  }


}
