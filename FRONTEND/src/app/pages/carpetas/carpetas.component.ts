import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-carpetas',
  templateUrl: './carpetas.component.html',
  styleUrls: ['./carpetas.component.css']
})
export class CarpetasComponent implements OnInit {

  cedula:string;
  idCurso:string;
  idCarpeta:string;
  nombrecurso:string;
  grupo:string;

  documentos = [];

  constructor(
    private router: Router,
    private _route: ActivatedRoute
  ) {
    this.cedula = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
    this.idCarpeta = this._route.snapshot.paramMap.get('idCarpeta');
  }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
  }

  iniciogo() {
  }
  buscargo() {
  }

  retosGo() {
  }

  competenciasGo() {
    
    }


}
