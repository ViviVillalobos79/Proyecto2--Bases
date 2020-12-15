import { Injectable } from '@angular/core';
import * as AWS from 'aws-sdk/global';
import * as S3 from 'aws-sdk/clients/s3';
import { Observable, of } from 'rxjs';
import { FileUpload } from 'src/app/models/file-upload';

export class UploadService {


  FOLDER = 'entregables/';
  BUCKET = 'xtec123';


  constructor() { }

  private getS3Bucket(): any {
    const bucket = new S3(
      {
        accessKeyId: 'AKIAZIRVESRZHNS5BE3W',
        secretAccessKey: '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',
        region: 'us-west-2'
      }
    );

    return bucket;
  }

  uploadfile(file) {
    const params = {
      Bucket: this.BUCKET,
      Key: file.name,
      Body: file,
      ACL: 'public-read'
    };

    this.getS3Bucket().upload(params, function (err, data) {
      if (err) {
        console.log('There was an error uploading your file: ', err);
        return false;
      }

      console.log('Successfully uploaded file.', data);
      return true;
    });
  }

  getFiles(): Observable<Array<FileUpload>> {
    const fileUploads = new Array<FileUpload>();

    const params = {
      Bucket: this.BUCKET,
    };

    this.getS3Bucket().listObjects(params, function (err, data) {
      if (err) {
        console.log('There was an error getting your files: ' + err);
        return;
      }

      console.log('Successfully get files.', data);

      const fileDatas = data.Contents;

      fileDatas.forEach(function (file) {
        fileUploads.push(new FileUpload(file.Key, 'https://xtec123.s3-us-west-2.amazonaws.com' + '/' + file.Key));
      });
    });

    //https://xtec123.s3-us-west-2.amazonaws.com/DataAnalytics.pdf

    return of(fileUploads);
  }

  getFile(fileG:string): Observable<Array<FileUpload>> {
    const fileUploads = new Array<FileUpload>();
    const params = {
      Bucket: this.BUCKET,
    };

    this.getS3Bucket().listObjects(params, function (err, data) {
      if (err) {
        console.log('There was an error getting your files: ' + err);
        return;
      }

      console.log('Successfully get files.', data);

      const fileDatas = data.Contents;

      fileDatas.forEach(function (file) {
        console.log(file.Key);

        if(file.Key.toString() == fileG){
          console.log("file.Key");
          fileUploads.push(new FileUpload(file.Key, 'https://xtec123.s3-us-west-2.amazonaws.com' + '/' + file.Key));}
      });
    });

    //https://xtec123.s3-us-west-2.amazonaws.com/DataAnalytics.pdf

    return of(fileUploads);
  }

  getAllFiles(fileG:string[]): Observable<Array<FileUpload>> {
    const fileUploads = new Array<FileUpload>();
    const params = {
      Bucket: this.BUCKET,
    };

    this.getS3Bucket().listObjects(params, function (err, data) {
      if (err) {
        console.log('There was an error getting your files: ' + err);
        return;
      }

      console.log('Successfully get files.', data);

      const fileDatas = data.Contents;

      fileDatas.forEach(function (file) {
        if(fileG.includes(file.Key.toString())){
          console.log("file.Key");
          fileUploads.push(new FileUpload(file.Key, 'https://xtec123.s3-us-west-2.amazonaws.com' + '/' + file.Key));}
      });
    });

    //https://xtec123.s3-us-west-2.amazonaws.com/DataAnalytics.pdf

    return of(fileUploads);
  }


}
