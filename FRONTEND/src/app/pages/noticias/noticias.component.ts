import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { EstudianteService } from '../../services/sql_services/Estudiantes/estudiante.service'
import { Noticia } from '../../models/SQL_Models/Profesor'

@Component({
  selector: 'app-noticias',
  templateUrl: './noticias.component.html',
  styleUrls: ['./noticias.component.css'],
  providers: [EstudianteService]
})
export class NoticiasComponent implements OnInit {
  username: string;
  nombrecurso: string;
  grupo: string;
  idCurso:string;
  curso:string;
  carnet: string;
  noticias: Noticia[]=[];


  constructor(
    private router: Router, 
    private _route: ActivatedRoute,
    private noticiaGrupoSvc: EstudianteService) {
    this.carnet = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
  
    this.noticiaGrupoSvc.getNoticiasGrupo(this.idCurso).subscribe((res) =>{
      var i : number = 0;
      var not = new Noticia;
      var size = Object.keys(res).length;
      
      while(size>i){
        not.fecha = res['fecha'];
        not.autor = res['autor'];
        not.titulo = res['titulo'];
        not.mensaje = res['mensaje'];
        this.noticias.push(not);
        i=i+1;
      }console.log(this.noticias)

    })
    
    this.nombrecurso = 'LABORATORIO DE CIRCUITOS ELECTRICOS';

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







  