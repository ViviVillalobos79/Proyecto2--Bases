import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-ges-cursos',
  templateUrl: './ges-cursos.component.html',
  styleUrls: ['./ges-cursos.component.css']
})
export class GesCursosComponent implements OnInit {
  cursos=[];

  constructor() { }

  ngOnInit(): void {
    this.cursos=[
    {codigo:"CE-3101",nombre:"Bases de datos",creditos:4,carrera:"CE"},
    {codigo:"EL-3301",nombre:"Diseño de sistemas digitales ",creditos:4,carrera:"CE"},
    {codigo:"CE-3201",nombre:"Taller de diseño digital",creditos:2,carrera:"CE"}];
  
  }

}
