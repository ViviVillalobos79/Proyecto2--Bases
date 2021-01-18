import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-noticias',
  templateUrl: './noticias.component.html',
  styleUrls: ['./noticias.component.css'],
})
export class NoticiasComponent implements OnInit {
  carnet: string;
  nombrecurso: string;
  grupo: string;
  noticias = [{}];
  idCurso:string;

  constructor(private router: Router, private _route: ActivatedRoute) {
    this.carnet = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.nombrecurso = 'LABORATORIO DE CIRCUITOS ELECTRICOS';
    this.grupo = '4';
    this.noticias = [
      {
        fecha: '12 de Diciembre',
        titulo: 'Notas',
        cuerpo: 'Las notas estan entregadas, se pueden ver en evaluaciones',
        autor: 'Diego',
      },
      {
        fecha: '15 de Diciembre',
        titulo: 'Quiz',
        cuerpo: 'Descargar el quiz de documentos/quices, para la clase de hoy',
        autor: 'Isaac',
      },
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
