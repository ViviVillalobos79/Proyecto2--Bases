import { Component, OnInit } from '@angular/core';
import { CursoService } from '../../services/sql_services/Administradores/curso.service'
import { Curso } from 'src/app/models/SQL_Models/Administrador';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-ges-cursos',
  templateUrl: './ges-cursos.component.html',
  styleUrls: ['./ges-cursos.component.css'],
  providers:[CursoService]
})
export class GesCursosComponent implements OnInit {
  curso:Curso;
  cursos:Curso[]=[];
  username:string;
  

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private cursoSvc: CursoService) {
      this.username = this._route.snapshot.paramMap.get('username')
     }

  ngOnInit(): void {
    this.cursoSvc.getAllCursos().subscribe((res) => {
      this.cursos=res;
    });
  }

  goCursos() {
    this.router.navigate(['gesCursos', this.username]);
  }

  goSemestre() {
    this.router.navigate(['semestre', this.username]);
  }
  getCurso(){

  }

  deshabilitar(curso,info){
    info['habilitado'] ='0';
    console.log(info)
    this.cursoSvc.updateCurso(curso,info).subscribe((res)=>{
      console.log(res)
    })
  }

  habilitar(curso,info){
      info['habilitado'] ='1';
      this.cursoSvc.updateCurso(curso,info).subscribe((res)=>{
        console.log(res)
      })
  }

}
