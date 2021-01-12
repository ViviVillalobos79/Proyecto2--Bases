import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css'],
})
export class InicioComponent implements OnInit {
  username: string;

  carpetas = ['Presentaciones', 'Quices', 'Exámenes', 'Proyectos'];

  constructor(private router: Router, private _route: ActivatedRoute) {
    this.username = this._route.snapshot.paramMap.get('username');
  }

  visitarCarpeta(nombre){
    //Visitar la carpeta
  }

  ngOnInit(): void {}

  iniciogo() {
    this.router.navigate(['inicio-deport', this.username]);
  }
  buscargo() {
    this.router.navigate(['buscar', this.username]);
  }

  retosGo() {
    this.router.navigate(['verRetos', this.username]);
  }

  competenciasGo() {
    this.router.navigate(['verCompetencias', this.username]);
  }
}
