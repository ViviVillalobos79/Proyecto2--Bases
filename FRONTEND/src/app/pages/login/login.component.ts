import { Component, OnInit } from '@angular/core';
import { PersonaService } from '../../services/mongo/persona.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  providers: [PersonaService]
})
export class LoginComponent implements OnInit {

  username:string;
  password:string;
  rol:string;

  constructor(private personaSvc:PersonaService) { }

  ngOnInit(): void {
    this.personaSvc.getAll().subscribe((res) => {
      console.log('Res ', res);
    });
  }

  login(){
    //Verifica las credenciales
  }

  rolSet(rol) {
    this.rol = rol;
  }

  setUser(user){
    this.username = user;
  }

  setPassword(password){
    this.password = password;
  }



}
