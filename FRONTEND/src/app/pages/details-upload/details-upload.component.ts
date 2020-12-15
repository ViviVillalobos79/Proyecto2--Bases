import { Component, Input, OnInit } from '@angular/core';
import { FileUpload } from 'src/app/models/file-upload';

@Component({
  selector: 'app-details-upload',
  templateUrl: './details-upload.component.html',
  styleUrls: ['./details-upload.component.css']
})
export class DetailsUploadComponent implements OnInit {

  @Input() fileUpload: FileUpload;

  constructor() { }

  ngOnInit() {
  }

}
