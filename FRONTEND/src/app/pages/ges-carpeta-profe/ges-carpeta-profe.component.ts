import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { FileUpload } from 'src/app/models/file-upload';
import { UploadService } from '../../services/S3/upload.service';

@Component({
  selector: 'app-ges-carpeta-profe',
  templateUrl: './ges-carpeta-profe.component.html',
  styleUrls: ['./ges-carpeta-profe.component.css'],
  providers: [UploadService]
})
export class GesCarpetaProfeComponent implements OnInit {

  username: string;
  nombrecurso:string;
  grupo:string;
  nombreCarpeta:string;

  filwe:Observable<FileUpload>;
  showeFile = false;
  selectedFiles: FileList;


  allFiles:Observable<Array<FileUpload>>;


  docs = ["planProyecto2.xlsx","B7JuanSolis_201206_145857.pdf"];

  constructor(private uploadSvc:UploadService) { }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
    this.getFile();
  }


  getFile(){
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
