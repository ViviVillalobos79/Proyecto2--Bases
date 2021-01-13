import { Output } from '@angular/core';
import { Component, EventEmitter, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-ges-docs-est',
  templateUrl: './ges-docs-est.component.html',
  styleUrls: ['./ges-docs-est.component.css'],
})
export class GesDocsEstComponent implements OnInit {
  carnet: string;
  nombrecurso: string;
  grupo: string;
  idCurso: string;

  carpetas = [
    { nombre: 'Presentaciones', id: 0 },
    { nombre: 'Quices', id: 1 },
    { nombre: 'Quices', id: 2 },
    { nombre: 'Quices', id: 3 },
  ];

  //carpetas = ["Presentaciones","Quices","Quices","Quices"]

  constructor(private router: Router, private _route: ActivatedRoute) {
    this.carnet = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.nombrecurso = 'LABORATORIO DE CIRCUITOS ELECTRICOS';
    this.grupo = '4';
    //Verificar las carpetas del curso preguntandole al server
    //Solicitar el nombre del curso y el grupo para rellenar la informacion
  }

  perfilGo() {
    this.router.navigate(['profile', this.carnet]);
  }

  iniciogo() {
    this.router.navigate(['inicio', this.carnet]);
  }
  cursosGo() {
    this.router.navigate(['inicio', this.carnet]);
  }

  noticiasGo() {
    this.router.navigate(['noticias', this.carnet, this.idCurso]);
  }
  documentosGo(){
    this.router.navigate(['gesDocEst', this.carnet, this.idCurso]);
  }
  evaluacionesGo(){

  }

  abrir(id) {
    this.router.navigate(['docEst']);
  }
}
