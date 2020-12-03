import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-ges-evaluaciones',
  templateUrl: './ges-evaluaciones.component.html',
  styleUrls: ['./ges-evaluaciones.component.css']
})
export class GesEvaluacionesComponent implements OnInit {

  evaluaciones = [
  {Nombre:"Examenes", valor:"30", rubros:["Examen 1", "Examen 2"], porcentajes:["15","15"] },
  {Nombre:"Quices", valor:"30", rubros:["Quiz 1", "quiz 2"], porcentajes:["15","15"]},
  {Nombre:"Proyectos", valor:"40", rubros:["Proyecto 1", "Proyecto 2"], porcentajes:["20","20"]},
];
  cedula:string;
  nombrecurso:string;
  grupo:string;

  constructor(
    private router: Router,
    private _route: ActivatedRoute
  ) {
    this.cedula = this._route.snapshot.paramMap.get('cedula');
  }

  iniciogo() {
    this.router.navigate(['inicio-deport', this.cedula]);
  }
  buscargo() {
    this.router.navigate(['buscar', this.cedula]);
  }

  retosGo() {
    this.router.navigate(['verRetos', this.cedula]);
  }

  competenciasGo() {
    this.router.navigate(['verCompetencias', this.cedula]);
  }


  visitarCarpeta(nombre){
    //Visitar la carpeta
  }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
  }

}
