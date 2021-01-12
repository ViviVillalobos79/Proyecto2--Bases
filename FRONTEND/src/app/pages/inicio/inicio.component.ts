import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css'],
})
export class InicioComponent implements OnInit {
  username: string;
  rol: string;

  cursos = ['Laboratorio de Circuitos GR3', 'Laboratorio de Circuitos GR4', 'Laboratorio de Circuitos GR5', 'Laboratorio de Circuitos GR5'];

  constructor(private router: Router, private _route: ActivatedRoute) {
    this.username = this._route.snapshot.paramMap.get('username');
    this.rol = this._route.snapshot.paramMap.get('rol');
  }

  visitarCurso(nombre){
    //Visitar la carpeta
  }

  ngOnInit(): void {}

  iniciogo() {
    this.router.navigate(['inicio', this.username, this.rol]);
  }
  buscargo() {
    this.router.navigate(['inicio', this.username, this.rol]);
  }
  competenciasGo() {
    this.router.navigate(['profile', this.username]);
  }
}
