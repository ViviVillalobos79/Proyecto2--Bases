import { Output } from '@angular/core';
import { Component, EventEmitter, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Persona } from 'src/app/models/Persona';
import { PersonaService } from '../../services/mongo/persona.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css'],
  providers: [PersonaService],
})
export class ProfileComponent implements OnInit {
  carne: number;
  nombre: string;
  correo: string;
  telefono: number;
  contraseña: string;
  personas:Persona[];

  @Output() onChange: EventEmitter<File> = new EventEmitter<File>();
  constructor(private router: Router, private personaSvc: PersonaService) {}

  ngOnInit(): void {
    this.carne = 2017147709;
    this.nombre = 'Lucy';
    this.correo = 'lmg@gmail.com';
    this.telefono = 89317701;
    this.contraseña = 'Lucy';

    this.personaSvc.getAll().subscribe((res) => {
      this.personas = res;
      console.log(this.personas);
    });
  }

  perfilGo() {
    this.router.navigate(['profile', this.carne]);
  }
}
