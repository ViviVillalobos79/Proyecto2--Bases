import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-notas',
  templateUrl: './notas.component.html',
  styleUrls: ['./notas.component.css']
})
export class NotasComponent implements OnInit {
  username:string;
  nombrecurso:string;
  grupo:string;
  headers=[{}];

  constructor() { }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
    this.headers=[
    {head:"Carnet",value:2017147709},
    {head:"Nombre",value:"Estudiante"},
    {head:"Examen I",value:70},
    {head:"Examen II",value:70},
    {head:"Promedio",value:70}
    ]
  }

}
