import { Output } from '@angular/core';
import { Component,EventEmitter, OnInit } from '@angular/core';
import { Router } from '@angular/router'; 

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  carne : number;
  nombre : string;
  correo : string;
  telefono : number;
  contraseña : string;

  @Output() onChange: EventEmitter<File> = new EventEmitter<File>();
  constructor(private router: Router) { }

  ngOnInit(): void {
    this.carne=2017147709;
    this.nombre="Lucy";
    this.correo="lmg@gmail.com"
    this.telefono=89317701
    this.contraseña="Lucy"

  }


  perfilGo() {
    this.router.navigate(['profile',this.carne]);
  }

}

