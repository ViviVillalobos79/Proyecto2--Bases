import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-semestre',
  templateUrl: './semestre.component.html',
  styleUrls: ['./semestre.component.css']
})
export class SemestreComponent implements OnInit {
  periodo:string;
  estudiantes=[];
  cursos=[];

  constructor() { }

  ngOnInit(): void {
    this.estudiantes=['Estudiante1','Estudiante2','Estudiante3','Estudiante4'];
    this.cursos=['Curso1','Curso2','Curso3','Curso4'];
  }
  periodoSet(periodo) {
    this.periodo = periodo;
  }



}
