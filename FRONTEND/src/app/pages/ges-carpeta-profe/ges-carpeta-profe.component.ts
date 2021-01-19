import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Observable } from 'rxjs';
import { FileUpload } from 'src/app/models/file-upload';
import {
  Datos_Curso,
  Documento,
  DocumentosCarpeta,
} from 'src/app/models/SQL_Models/Profesor';
import { UploadService } from '../../services/S3/upload.service';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';
import { DocumentoService } from '../../services/sql_services/Profesores/documento.service';

@Component({
  selector: 'app-ges-carpeta-profe',
  templateUrl: './ges-carpeta-profe.component.html',
  styleUrls: ['./ges-carpeta-profe.component.css'],
  providers: [UploadService, ProfesorService, DocumentoService],
})
export class GesCarpetaProfeComponent implements OnInit {
  username: string;
  nombrecurso: string;
  grupo: string;
  nombreCarpeta: string;
  idCurso: string;
  idCarpeta: string;

  newDoc: Documento = new Documento();

  documentos: DocumentosCarpeta[];

  filwe: Observable<FileUpload>;
  showeFile = false;
  selectedFiles: FileList;
  curso: Datos_Curso;

  allFiles: Observable<Array<FileUpload>>;

  docs = [];

  constructor(
    private uploadSvc: UploadService,
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService,
    private documentoScv: DocumentoService
  ) {
    this.username = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
    this.idCarpeta = this._route.snapshot.paramMap.get('idCarpeta');
    this.nombreCarpeta = this._route.snapshot.paramMap.get('nombreCarpeta');
  }

  ngOnInit(): void {
    //Obtener la información del curso

    this.profesorSvc.getDatos_Curso(this.idCurso).subscribe((res) => {
      this.curso = res[0];
      this.nombrecurso = this.curso.nombre_curso;
      this.grupo = this.curso.numero_grupo.toString();
      console.log('Res ', this.curso);
      this.getFiles();
    });
  }


  getFiles() {
    this.profesorSvc
      .getDocumentosCarpeta(this.idCurso, this.nombreCarpeta)
      .subscribe((res) => {
        this.documentos = res;
        console.log('Documentos ', this.documentos);
        this.getFile();
      });
  }

  getFile() {
    this.docs = [];
    this.documentos.forEach((element) => {
      this.docs.push(element.nombre_documento);
    });
    this.allFiles = this.uploadSvc.getAllFiles(this.docs);
  }

  upload() {
    console.log("doc a subir", this.newDoc);
    this.documentoScv.addDocumento(this.newDoc).subscribe((res) => {
      console.log('Subir documento ', res);
      const file = this.selectedFiles.item(0);
      this.uploadSvc.uploadfile(file);
      this.getFiles();
    });
  }

  selectFile(event) {
    this.selectedFiles = event.target.files;
    let nombre = this.selectedFiles[0].name;
    let tam = this.selectedFiles[0].size;
    let date: Date = new Date();
    //let fecha = date.getDay() +'/' + date.getMonth() + '/' + date.getFullYear();
    let fecha = "8/12/2020";
    //this.newDoc.id_documento = 0;
    this.newDoc.tamano = tam;
    this.newDoc.fecha = fecha;
    this.newDoc.nombre_documento = nombre;
    this.newDoc.carpeta = Number(this.idCarpeta);
    //this.docs.push(nombre);
    console.log(nombre);
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
