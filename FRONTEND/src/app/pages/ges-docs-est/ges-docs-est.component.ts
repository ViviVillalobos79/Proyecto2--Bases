import { Output } from '@angular/core';
import { Component,EventEmitter, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router'; 
@Component({
  selector: 'app-ges-docs-est',
  templateUrl: './ges-docs-est.component.html',
  styleUrls: ['./ges-docs-est.component.css']
})
export class GesDocsEstComponent implements OnInit {
  
  username:string;
  nombrecurso:string;
  grupo:string;

  carpetas = ["Presentaciones","Quices","Exámenes","Proyectos"]

  constructor(private router: Router,
    private _route: ActivatedRoute) { 
      this.username = this._route.snapshot.paramMap.get('username');
    }

  ngOnInit(): void {
    this.nombrecurso = "LABORATORIO DE CIRCUITOS ELECTRICOS";
    this.grupo = "4";
  }

  perfilGo() {
    this.router.navigate(['profile']);
  }

  abrir() {
    this.router.navigate(['docEst']);
  }
}
