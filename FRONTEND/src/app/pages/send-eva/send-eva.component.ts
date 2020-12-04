import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-send-eva',
  templateUrl: './send-eva.component.html',
  styleUrls: ['./send-eva.component.css']
})
export class SendEvaComponent implements OnInit {
  username:string;
  nombrecurso:string;
  grupo:string;
  asignaciones=[]
  rubros=[]

  constructor() { }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
    this.asignaciones=["Tarea corta","Examen","Proyecto"]
    this.rubros=["Primera entrega","Segunda entrega","Tercer entrega"]
  }

}
