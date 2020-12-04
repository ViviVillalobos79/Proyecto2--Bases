
import { Output } from '@angular/core';
import { Component,EventEmitter, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router'; 
@Component({
  selector: 'app-docs-est',
  templateUrl: './docs-est.component.html',
  styleUrls: ['./docs-est.component.css']
})
export class DocsEstComponent implements OnInit {
  username:string;
  nombrecurso:string;
  grupo:string;
  documento=[]
  
  constructor(private router: Router,
    private _route: ActivatedRoute) { }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
    this.documento=["Laboratorio","Especificación de proyecto"]
  }

}
