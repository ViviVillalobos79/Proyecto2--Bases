import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  username:string;
  password:string;
  rol:string;

  constructor() { }

  ngOnInit(): void {

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
