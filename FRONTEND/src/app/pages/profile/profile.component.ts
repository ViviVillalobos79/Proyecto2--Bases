import { Output } from '@angular/core';
import { Component, EventEmitter, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { NumberAttributeValue } from 'aws-sdk/clients/dynamodbstreams';
import { element } from 'protractor';
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
  contraseña: string;
  personas:Persona[];

  @Output() onChange: EventEmitter<File> = new EventEmitter<File>();
  constructor(private router: Router, private personaSvc: PersonaService, private _route: ActivatedRoute) {
    this.carne = this._route.snapshot.paramMap.get('cedula');
  }

  ngOnInit(): void {

    this.personaSvc.getById(this.carne).subscribe((res) => {
      this.personas = res;
      this.personas.forEach(element=>{
        this.nombre = element.primer_Nombre +' '+ element.apellido1;
        this.correo = element.correo;
      })    
      
      console.log(this.personas);
    });
  }

  perfilGo() {
    this.router.navigate(['profile', this.carne]);
  }
}
