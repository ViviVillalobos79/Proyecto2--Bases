import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Persona } from 'src/app/models/Persona';
import { PersonaService } from '../../services/mongo/persona.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  providers: [PersonaService],
})
export class LoginComponent implements OnInit {
  username: string;
  password: string;
  rol: string;
  loged:boolean;
  personas:Persona[];

  constructor(
    private personaSvc: PersonaService,
    private router: Router,
    private _route: ActivatedRoute
  ) {}

  ngOnInit(): void {
    this.loged = false;
    this.personaSvc.getAll().subscribe((res) => {
      console.log('Res ', res);
      this.personas = res;
    });
  }

  rolSet(rol) {
    console.log(rol);
    this.rol = rol;
  }

  setUser(user) {
    this.username = user;
  }

  setPassword(password) {
    this.password = password;
  }

  checkCredentials(){
    
    this.personas.forEach(element => {

      if(this.rol == element.tipo_Persona && this.username == element.identificador.toString() && this.password == element.clave){
        this.loged = true;
      }

    });
  }

  login() {
    //Verifica las credenciales
    this.checkCredentials();
    if(this.loged){
      this.router.navigate(['inicio', this.username]);}
  }
}
