import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Datos_Curso } from 'src/app/models/SQL_Models/Profesor';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { RubroService } from '../../services/sql_services/Profesores/rubro.service';


@Component({
  selector: 'app-rubros-profe',
  templateUrl: './rubros-profe.component.html',
  styleUrls: ['./rubros-profe.component.css'],
  providers: [ProfesorService,RubroService],
})
export class RubrosProfeComponent implements OnInit {

  username: string;
  nombrecurso: string;
  grupo: string;
  nombreCarpeta: string;
  idCurso: string;
  curso: Datos_Curso;
  total:string;
  nombreNewRubro:string;
  valorNewRubro:string;

  rubros = [
    {nombre:"hola0",id:0, valor:"30"},
    {nombre:"hola1",id:1, valor:"31"},
    {nombre:"hola2",id:2, valor:"32"}
  ]

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private rubroSvc: RubroService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
    this.revisarCien();
   }

  ngOnInit(): void {
    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
      console.log('Res ', this.curso);
      this.revisarCien();
    });
  }

  getRubros(){
    
  }

  cambioValor(idvalor,porcentaje){
    this.rubros.forEach(element => {
      if(element.id == idvalor){
        element.valor = porcentaje;
      }
    });
    this.revisarCien();
  }

  revisarCien(){
    this.total = "0";
    let tot = 0;
    this.rubros.forEach(element => {
      tot = tot + Number(element.valor);
    });
    this.total = tot.toString();
    console.log(this.total);
  }

  crearRubro() {
    let newTotal = Number(this.total) + Number(this.valorNewRubro);
    if(newTotal != 100){
      console.log("el total debe ser 100");
    }
    else{
      //subir new rubro
    }
  }

  nombreNewrubro(nombre){
    this.nombreNewRubro = nombre;
  }

  valorNewrubro(valor){
    this.valorNewRubro = valor;
  }

  visitarRubro(idRubro){

  }

  goInicio() {
    this.router.navigate(['inicio', this.username]);
  }

  goCursos() {
    this.router.navigate(['inicio', this.username]);
  }

  goPerfil() {
    this.router.navigate(['profile', this.username]);
  }

  goDocs() {
    this.router.navigate(['gesDocProfe', this.username, this.idCurso]);
  }

  goEvaluaciones() {
    this.router.navigate(['gesEvaluaciones', this.username, this.idCurso]);
  }

  goNoticias() {
    this.router.navigate(['noticiaProfe', this.username, this.idCurso]);
  }

}
