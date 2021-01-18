import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { EstudianteService } from '../../services/sql_services/Estudiantes/estudiante.service'
import { Datos_Curso, Noticia } from '../../models/SQL_Models/Profesor'
import { NoticiasGenerales } from '../../models/SQL_Models/Estudiante'
import { ProfesorService } from 'src/app/services/sql_services/Profesores/profesor.service';

@Component({
  selector: 'app-noticias',
  templateUrl: './noticias.component.html',
  styleUrls: ['./noticias.component.css'],
  providers: [EstudianteService,ProfesorService]
})
export class NoticiasComponent implements OnInit {
  username: string;
  nombrecurso: string;
  grupo: string;
  idCurso:string;
  idCarpeta:string;
  curso: Datos_Curso;
  mensaje:string;
  carnet: string;
  not=[];
  noticias: NoticiasGenerales[]=[];


  constructor(
    private router: Router, 
    private _route: ActivatedRoute,
    private estudiantesSvc: EstudianteService,
    private profesorSvc: ProfesorService) {
    this.carnet = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');}

  ngOnInit(): void {
    this.estudiantesSvc.getNoticiasGrupo(this.idCurso).subscribe((res) =>{
      this.noticias = res;
      this.noticias.forEach((element)=>{
        let noticia = {
          fecha: element.fecha,
          titulo: element.titulo,
          mensaje: element.mensaje
        };
        this.not.push(noticia)
      });

      console.log(this.not)
    });
    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res)=>{
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;

    })
    

  };

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
    this.router.navigate(['gesDocEst', this.carnet, this.idCurso, this.idCarpeta]);
  }
  evaluacionesGo(){
    this.router.navigate(['sendEva', this.carnet, this.idCurso]);

  }
}







  