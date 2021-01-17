import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { FileUpload } from 'src/app/models/file-upload';
import { UploadService } from '../../services/S3/upload.service';


@Component({
  selector: 'app-send-eva',
  templateUrl: './send-eva.component.html',
  styleUrls: ['./send-eva.component.css'],
  providers:[UploadService]
})
export class SendEvaComponent implements OnInit {
  username:string;
  nombrecurso:string;
  grupo:string;
  asignaciones=[];
  rubros=[];

  filwe:Observable<FileUpload>;
  showeFile = false;
  selectedFiles: FileList;

  allFiles:Observable<Array<FileUpload>>;

  docs = [];
  constructor(private uploadSvc:UploadService) { }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
    this.asignaciones=["Tarea corta","Examen","Proyecto"];
    this.rubros=["Primera entrega","Segunda entrega","Tercer entrega"];
    this.getFile();
  }
  getFile() {
    this.allFiles = this.uploadSvc.getAllFiles(this.docs);
  }

  upload() {
    const file = this.selectedFiles.item(0);
    this.uploadSvc.uploadfile(file);
    this.getFile();
  }

  selectFile(event) {
    this.selectedFiles = event.target.files;
    let nombre = this.selectedFiles[0].name;
    this.docs.push(nombre);
    console.log(nombre);
  }

  

}
