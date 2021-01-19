import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { from, Observable } from 'rxjs';
import { FileUpload } from 'src/app/models/file-upload';
import { Datos_Curso, Rubro } from 'src/app/models/SQL_Models/Profesor';
import { EvaluacionService } from 'src/app/services/sql_services/Profesores/evaluacion.service';
import { ProfesorService } from 'src/app/services/sql_services/Profesores/profesor.service';
import { RubroService } from 'src/app/services/sql_services/Profesores/rubro.service';
import { UploadService } from '../../services/S3/upload.service';
import { CarpetaService } from '../../services/sql_services/Profesores/carpeta.service'
import { EntregableService } from '../../services/sql_services/Profesores/entregable.service'
import { Entregable } from 'src/app/models/SQL_Models/Profesor'

@Component({
  selector: 'app-send-eva',
  templateUrl: './send-eva.component.html',
  styleUrls: ['./send-eva.component.css'],
  providers: [UploadService,EvaluacionService,ProfesorService,RubroService,CarpetaService],
})
export class SendEvaComponent implements OnInit {
  carnet: string;
  nombrecurso: string;
  grupo: string;
  asignaciones = [];
  rubros=[];
  rubrosAll: Rubro[];
  idCurso:string;

  filwe: Observable<FileUpload>;
  showeFile = false;
  selectedFiles: FileList;

  allFiles: Observable<Array<FileUpload>>;

  docs = [];

  curso: Datos_Curso;

  constructor(
    private uploadSvc: UploadService,
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private rubroSvc:RubroService,
    private entregableSvc: EntregableService) {
    this.carnet = this._route.snapshot.paramMap.get('carnet');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
      this.getRubros();
    });
   
    this.getFile();
  }

  getRubros() {
    this.rubroSvc.getAllRubros().subscribe((res) => {
      console.log('All ', res);
      this.setRubros(res);
    });
  }

  setRubros(rubrosH: Rubro[]) {
    rubrosH.forEach((element) => {
      if (element.grupo.toString() == this.grupo) {
        let rub = {
          nombre: element.nombre_rubro,
          id: element.id_rubro,
          valor: element.porcentaje.toString(),
        };
        this.rubros.push(rub);
       
      }
    }); console.log('rub',this.rubros)
  }
  
  getFile() {
    this.allFiles = this.uploadSvc.getAllFiles(this.docs);
  }

  upload() {
    const file = this.selectedFiles.item(0);
    this.uploadSvc.uploadfile(file);
    this.getFile();
    let entrega = new Entregable();
    entrega.id_entregable=this.rubros[this.idCurso]['id'];
    entrega.id_evaluacion=this.rubros[this.idCurso]['id'];
    entrega.observaciones='';
    entrega.nota=null;
    entrega.fecha_entrega= Date.toString();
    entrega.docu_estudiante=file.name;
    entrega.docu_profesor='';
    console.log(entrega)

  }

  selectFile(event) {
    this.selectedFiles = event.target.files;
    let nombre = this.selectedFiles[0].name;
    this.docs.push(nombre);
    console.log(nombre);
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
  documentosGo() {
    this.router.navigate(['gesDocEst', this.carnet, this.idCurso]);
  }
  evaluacionesGo() {
    this.router.navigate(['sendEva', this.carnet, this.idCurso]);
  }
  notasGo() {
    this.router.navigate(['notas', this.carnet, this.idCurso]);
  }


}
