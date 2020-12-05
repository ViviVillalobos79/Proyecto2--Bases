import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { matriz } from 'src/app/models/matriz';

@Component({
  selector: 'app-pruebas',
  templateUrl: './pruebas.component.html',
  styleUrls: ['./pruebas.component.css'],
})
export class PruebasComponent implements OnInit {
  cedula: string;
  nombrecurso: string;
  grupo: string;
  idCurso: string;

  headers = [
    'Carné',
    'Nombre',
    'Examen1',
    'Examen2',
    'Total(30%)',
    'Quiz1',
    'Quiz2',
    'Total(30%)',
    'Proyecto1',
    'Proyecto2',
    'Total(40%)',
  ];

  val = [
    {
      valores: [
        'Carné',
        '2018104702',
        '2017097108',
        '2018085151',
        '2019053776'
      ],
    },
    {
      valores: [
        'Nombre',
        'Viviana Villalobos Valverde',
        'Sebastian Cortez Mora',
        'Ana Gaston Lola',
        'Max Guzman Jilas'
      ],
    },
    {valores: ['Examen1','20','50','100','95']},
    {valores: ['Examen2','20','50','100','95']},
  ];

  carnets = ['2018104702', '2017097108', '2018085151', '2019053776'];

  nombres = [
    'Viviana Villalobos Valverde',
    'Sebastian Cortez Mora',
    'Ana Gaston Lola',
    'Max Guzman Jilas',
  ];

  examen1 = ['20','50','100','95'];
  examen2 = ['20','50','100','95'];


  constructor(private router: Router, private _route: ActivatedRoute) {
    this.cedula = this._route.snapshot.paramMap.get('cedula');
    this.idCurso = this._route.snapshot.paramMap.get('idCurso');
  }

  ngOnInit(): void {
    this.nombrecurso = 'LABORATORIO DE CIRCUITOS ELECTRICOS';
    this.grupo = '4';
  }

  iniciogo() {
    //this.router.navigate(['inicio-deport', this.cedula]);
  }
  cursosgo() {
    //this.router.navigate(['buscar', this.cedula]);
  }

  perfilGo() {
    this.router.navigate(['profile', this.cedula]);
  }

  docsCurso() {
    this.router.navigate(['gesDocProfe', this.cedula, this.idCurso]);
  }

  evaluacionCurso(){
    this.router.navigate(['gesEvaluaciones', this.cedula, this.idCurso]);
  }
}
