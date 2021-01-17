import { Output } from '@angular/core';
import { Component, EventEmitter, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-docs-est',
  templateUrl: './docs-est.component.html',
  styleUrls: ['./docs-est.component.css'],
})
export class DocsEstComponent implements OnInit {
  username: string;
  nombrecurso: string;
  grupo: string;
  documento = [];
  idCurso:string;
  idCarpeta:string;

  constructor(private router: Router, private _route: ActivatedRoute) {
    this.username = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
    this.idCarpeta = this._route.snapshot.paramMap.get('idCarpeta');

  }

  ngOnInit(): void {
    //Obtemer la informacion del curso
    //Obtener y mostrar los documentos de la carpeta
    //Agregar lo de descargar los documentos (Amazon)
    this.nombrecurso = 'LABORATORIO DE CIRCUITOS ELECTRICOS';
    this.grupo = '4';
    this.documento = ['Laboratorio', 'Especificación de proyecto'];
  }

  goInicio(){
    this.router.navigate(['inicio', this.username]);
  }

  goCursos(){
    this.router.navigate(['inicio', this.username]);
  }

  goPerfil(){
    this.router.navigate(['profile', this.username]);
  }

  goNoticias(){
    this.router.navigate(['noticias', this.username, this.idCurso]);
  }

  goDocumentos(){
    //Ruta para ir a las carpetas del curso
  }

  goEvaluaciones(){
    //Ruta para ir a la evaluacion del curso
  }



}
