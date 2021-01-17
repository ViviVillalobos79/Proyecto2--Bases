import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { ProfesorService } from '../../services/sql_services/Profesores/profesor.service';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css'],
  providers: [ProfesorService],
})
export class InicioComponent implements OnInit {
  username: string;
  rol: string;

  cursos = [
    { nombre: 'Laboratorio de Circuitos GR3', id: 1 },
    { nombre: 'Laboratorio de Circuitos GR4', id: 2 },
    { nombre: 'Laboratorio de Circuitos GR5', id: 3 },
    { nombre: 'Laboratorio de Circuitos GR6', id: 4 },
  ];

  constructor(
    private router: Router,
    private _route: ActivatedRoute,
    private profesorSvc: ProfesorService
  ) {
    this.username = this._route.snapshot.paramMap.get('username');
  }

  visitarCurso(id) {
    //Visitar la carpeta
    if (this.rol == 'profesor') {
      this.router.navigate(['gesDocProfe', this.username, id]);
    }

    if (this.rol == 'estudiante') {
      this.router.navigate(['gesDocEst', this.username, id]);
    }
  }

  ngOnInit(): void {
    //Solicitar cursos
    if (this.username.length == 9) {
      this.rol = 'profesor';
    }
    if (this.username.length == 10) {
      this.rol = 'estudiante';
    }
  }

  getCursosProfe() {}

  getCursosEstudiante() {}

  iniciogo() {
    this.router.navigate(['inicio', this.username]);
  }
  buscargo() {
    this.router.navigate(['inicio', this.username]);
  }
  competenciasGo() {
    this.router.navigate(['profile', this.username]);
  }
}
