import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-notas',
  templateUrl: './notas.component.html',
  styleUrls: ['./notas.component.css'],
})
export class NotasComponent implements OnInit {
  carnet: string;
  nombrecurso: string;
  grupo: string;
  headers = [{}];
  idCurso:string;

  constructor(private router: Router, private _route: ActivatedRoute) {
    this.carnet = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.nombrecurso = 'LABORATORIO DE CIRCUITOS ELECTRICOS';
    this.grupo = '4';
    this.headers = [
      { head: 'Carnet', value: 2017147709 },
      { head: 'Nombre', value: 'Estudiante' },
      { head: 'Examen I', value: 70 },
      { head: 'Examen II', value: 70 },
      { head: 'Promedio', value: 70 },
    ];
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
}
