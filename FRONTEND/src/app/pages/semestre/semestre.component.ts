import { Component, OnInit } from '@angular/core';
import {ChangeDetectionStrategy} from '@angular/core';
import {
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Router, ActivatedRoute } from '@angular/router';
import { matriz } from 'src/app/models/matriz';
import { UploadFileService } from '../../services/upload-file.service';
import { InicializarSemestre } from '../../models/SQL_Models/Administrador';
import * as XLSX from 'xlsx';
import { element } from 'protractor';

@Component({
  selector: 'app-semestre',
  templateUrl: './semestre.component.html',
  styleUrls: ['./semestre.component.css'],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class SemestreComponent implements OnInit {
  username:string;
  periodo:string;
  estudiantes=[];
  cursos=[];
  year: number;
  month: number;
  day: number;
  yearDate = new FormControl('');
  myForm: FormGroup;
  iniciar:InicializarSemestre[]=[];

  file:File;
  arrayBuffer:any;
  filelist:any;
  
  constructor(
    public fb: FormBuilder,
    private _route: ActivatedRoute,
    private router: Router){
    this.myForm = this.fb.group({
      yearDate: ['', [Validators.required]]
    }),
    this.username = this._route.snapshot.paramMap.get('username')
    
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
  addfile(event){
  this.file= event.target.files[0];
  let fileReader = new FileReader();
  fileReader.readAsArrayBuffer(this.file);
  fileReader.onload = (e) => {
      this.arrayBuffer = fileReader.result;
      var data = new Uint8Array(this.arrayBuffer);
      var arr = new Array();
      for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
      var bstr = arr.join("");
      var workbook = XLSX.read(bstr, {type:"binary"});
      var first_sheet_name = workbook.SheetNames[0];
      var worksheet = workbook.Sheets[first_sheet_name];
      var arraylist = XLSX.utils.sheet_to_json(worksheet,{raw:true});
     
      var inicio =new InicializarSemestre();
      
      arraylist.forEach(element=>{
        inicio.Carnet=element['Carnet'];
        inicio.CodCurso=element['CodCurso'];
        inicio.NomCurso=element['NomCurso'];
        inicio.Creditos=element['Creditos'];
        inicio.Carrera=element['Carrera'];
        inicio.Habilitado=element['Habilitado'];
        inicio.Ano=element['Ano'];
        inicio.Periodo=element['Periodo'];
        inicio.NumGrupo=element['NumGrupo'];
        inicio.CedProfe=element['CedProfe'];
        inicio.CedAdmin=element['CedAdmin'];
        this.iniciar.push(inicio);
      });
      console.log(this.iniciar)
    }
  }
  goCursos() {
    this.router.navigate(['gesCursos', this.username]);
  }

  goSemestre() {
    this.router.navigate(['semestre', this.username]);
  }


}
