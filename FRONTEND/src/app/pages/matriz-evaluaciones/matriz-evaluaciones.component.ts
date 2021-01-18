import { Component, OnInit, ViewChild } from '@angular/core';
import { MatTable } from '@angular/material/table';
import { Router, ActivatedRoute } from '@angular/router';
import {
  EstudiantesMatriculados,
  ReporteNotas,
} from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { PersonaService } from '../../services/mongo/persona.service';
import { Persona } from 'src/app/models/Persona';

@Component({
  selector: 'app-matriz-evaluaciones',
  templateUrl: './matriz-evaluaciones.component.html',
  styleUrls: ['./matriz-evaluaciones.component.css'],
  providers: [ProfesorService, PersonaService],
})
export class MatrizEvaluacionesComponent {
  cedula: string;
  nombrecurso: string;
  grupo: string;
  idCurso: string;

  headers = [
    'Carné',
    'Nombre',
    'Examen1',
    'Examen2',
    'Total(30%)',
    'Quiz1',
    'Quiz2',
    'Total(30%)',
    'Proyecto1',
    'Proyecto2',
    'Total(40%)',
  ];

  val = [
    {
      valores: [
        'Carné',
        '2018104702',
        '2017097108',
        '2018085151',
        '2019053776',
      ],
    },
    {
      valores: [
        'Nombre',
        'Viviana Villalobos Valverde',
        'Sebastian Cortez Mora',
        'Ana Gaston Lola',
        'Max Guzman Jilas',
      ],
    },
    { valores: ['Examen1', '20', '50', '100', '95'] },
    { valores: ['Examen2', '20', '50', '100', '95'] },
  ];

  personas: Persona[] = [];

  valco = [];

  carnets = [];

  nombres = [
    'Viviana Villalobos Valverde',
    'Sebastian Cortez Mora',
    'Ana Gaston Lola',
    'Max Guzman Jilas',
  ];

  examen1 = ['20', '50', '100', '95'];
  examen2 = ['20', '50', '100', '95'];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private personaSvc: PersonaService
  ) {
    this.cedula = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.nombrecurso = 'LABORATORIO DE CIRCUITOS ELECTRICOS';
    this.grupo = '4';
    this.getCarnets();
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
    this.getEvaluaciones();
  }

  getEvaluaciones() {
    this.profesorSvc.getReporteNotas(this.idCurso).subscribe((res) => {
      console.log('NOTAS ', res);
      this.setListasNotas(res);
    });
  }

  setListasNotas(notas: ReporteNotas[]) {
    let evaluaciones = [];
    let valorestemp = [];
    let carnet = notas[0].carnet;
    for (let i = 0; i < notas.length; i++) {
      if (notas[i].carnet == carnet) {
        evaluaciones.push(notas[i].especificacion);
      } else {
        break;
      }
    }

    evaluaciones.forEach((element) => {
      let temp1 = [element];
      let temp2 = { valores: temp1 };
      valorestemp.push(temp2);
    });
    console.log('incio ', valorestemp);
    notas.forEach((element) => {
      //console.log("rubro revisando ", element.especificacion);
      valorestemp.forEach((element2) => {
        //console.log("temo2 ", element2);
        if (element.especificacion == element2.valores[0]) {
          element2.valores.push(element.nota.toString());
        }
      });
    });

    console.log('final ', valorestemp);

    valorestemp.forEach((element) => {
      this.valco.push(element);
    });

    console.log('Final final ', this.valco);
    console.log('Final2 final2 ', this.val);
  }

  iniciogo() {
    //this.router.navigate(['inicio-deport', this.cedula]);
  }
  cursosgo() {
    //this.router.navigate(['buscar', this.cedula]);
  }

  perfilGo() {
    this.router.navigate(['profile', this.cedula]);
  }

  docsCurso() {
    this.router.navigate(['gesDocProfe', this.cedula, this.idCurso]);
  }

  evaluacionCurso() {
    this.router.navigate(['gesEvaluaciones', this.cedula, this.idCurso]);
  }
}
