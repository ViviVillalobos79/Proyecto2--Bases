import { Component, OnInit } from '@angular/core';
import {ChangeDetectionStrategy} from '@angular/core';
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';

@Component({
  selector: 'app-semestre',
  templateUrl: './semestre.component.html',
  styleUrls: ['./semestre.component.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class SemestreComponent implements OnInit {
  periodo:string;
  estudiantes=[];
  cursos=[];
  year: number;
  month: number;
  day: number;
  yearDate = new FormControl('');
  myForm: FormGroup;
  
  constructor(public fb: FormBuilder){
    this.myForm = this.fb.group({
      yearDate: ['', [Validators.required]]
    })
  }

  ngOnInit(): void {
    this.estudiantes=['Estudiante1','Estudiante2','Estudiante3','Estudiante4'];
    this.cursos=['Curso1','Curso2','Curso3','Curso4'];
  }

  periodoSet(periodo) {
    this.periodo = periodo;
    console.log(this.periodo);

  }

  dobSet(dob) {
    this.year = (dob[0] + dob[1] + dob[2] + dob[3]) * 1;
    this.month = (dob[5] + dob[6]) * 1;
    this.day = (dob[8] + dob[9]) * 1;
    console.log(this.year);
  }


}
