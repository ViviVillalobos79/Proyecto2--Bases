import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-ges-docos-profe',
  templateUrl: './ges-docos-profe.component.html',
  styleUrls: ['./ges-docos-profe.component.css']
})
export class GesDocosProfeComponent implements OnInit {

  filtro: string;
  busqueda: string;
  username: string;
  nombrecurso:string;
  grupo:string;
  nombreCarpeta:string;

  carpetas = ["Presentaciones","Quices","Exámenes","Proyectos"]

  constructor(
    private router: Router,
    private _route: ActivatedRoute
  ) {
    this.username = this._route.snapshot.paramMap.get('username');
  }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
  }


  buscar() {
  }

  crearCarpeta(nombre){
    this.nombreCarpeta = nombre;
  }

  visitarCarpeta(nombre){
    //Visitar la carpeta
  }


  iniciogo() {
    this.router.navigate(['inicio-deport', this.username]);
  }
  buscargo() {
    this.router.navigate(['buscar', this.username]);
  }

  retosGo() {
    this.router.navigate(['verRetos', this.username]);
  }

  competenciasGo() {
    this.router.navigate(['verCompetencias', this.username]);
  }

  verInfo(tipo, id) {
    if (tipo == 'reto') {
      this.router.navigate(['insreto', this.username, id]);
    }
    if (tipo == 'grupo') {
      this.router.navigate(['asogrupo', this.username, id]);
    }
    if (tipo == 'competencia') {
      this.router.navigate(['inscarrera', this.username, id]);
    }
    if (tipo == 'atleta') {
      this.router.navigate(['atleta', this.username, id, 'false']);
    }
  }



}
