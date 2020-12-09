import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { matriz } from 'src/app/models/matriz';
import { UploadFileService } from '../../services/upload-file.service';

@Component({
  selector: 'app-pruebas',
  templateUrl: './pruebas.component.html',
  styleUrls: ['./pruebas.component.css'],
})
export class PruebasComponent {

  selectedFiles: FileList;
  currentFileUpload: File;
  progress: { percentage: number } = { percentage: 0 };
  selectedFile = null;
  changeImage = false;
  file:string;
  constructor(private uploadService: UploadFileService, private https:HttpClient){}
  viewFile(){
window.open('https://bucketName.s3.cloudLocation.amazonaws.com/'+this.file);
  }
  deleteFile()
  {
    this.https.post<string>('http://localhost:8080/deleteFile',this.file).subscribe(
      res => {
        this.file = res;
      }
    );
  }
  change(event) {
    this.changeImage = true;
  }
  changedImage(event) {
    this.selectedFile = event.target.files[0];
  }
  upload() {
    this.progress.percentage = 0;
    this.currentFileUpload = this.selectedFiles.item(0);
this.uploadService.pushFileToStorage(this.currentFileUpload).subscribe(event => {
      this.selectedFiles = undefined;
    });
  }
  selectFile(event) {
    this.selectedFiles = event.target.files;
  }
}


