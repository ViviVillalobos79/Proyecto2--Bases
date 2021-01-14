import { Output } from '@angular/core';
import { Component, EventEmitter, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Persona } from 'src/app/models/Persona';
import { PersonaService } from '../../services/mongo/persona.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css'],
  providers: [PersonaService],
})
export class ProfileComponent implements OnInit {
  carne: string;
  nombre: string;
  correo: string;
  telefono: number;
  contraseña: string;
  personas: Persona[];

  estudiante:Persona;

  @Output() onChange: EventEmitter<File> = new EventEmitter<File>();
  constructor(
    private router: Router,
    private personaSvc: PersonaService,
    private _route: ActivatedRoute
  ) {
    this.carne = this._route.snapshot.paramMap.get('cedula');
  }

  ngOnInit(): void {
    //this.carne = 2017147709;
    //this.nombre = 'Lucy';
    //this.correo = 'lmg@gmail.com';
    this.telefono = 89317701;
    //this.contraseña = 'Lucy';

    this.personaSvc.getAll().subscribe((res) => {
      this.personas = res;
      console.log(this.personas);
      this.hola(this.personas);
    });

    this.personaSvc.getById(2015053251).subscribe((res) => {
      this.estudiante = res[0];
      console.log(res[0].apellido1);

    });
  }

  perfilGo() {
    this.router.navigate(['profile', this.carne]);
  }

  hola(per: Persona[]) {
    per.forEach((element) => {
      if (element.identificador.toString() == this.carne) {
        this.nombre = element.primer_Nombre + ' ' + element.apellido1;
        this.correo = element.correo;
        this.contraseña = element.clave;
      }
    });
  }
}
