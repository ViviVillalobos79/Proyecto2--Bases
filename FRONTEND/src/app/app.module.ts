import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {MatExpansionModule} from '@angular/material/expansion';
import { MatCardModule } from '@angular/material/card';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FormsModule } from "@angular/forms";
import { MatButtonModule } from '@angular/material/button';
import { ReactiveFormsModule } from '@angular/forms';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http';
import { MatTableModule } from '@angular/material/table';
import {MatChipsModule} from '@angular/material/chips';

import { LoginComponent } from './pages/login/login.component';
import { GesDocosProfeComponent } from './pages/ges-docos-profe/ges-docos-profe.component';
import { ProfileComponent } from './pages/profile/profile.component';
import { GesEvaluacionesComponent } from './pages/ges-evaluaciones/ges-evaluaciones.component';
import { GesDocsEstComponent } from './pages/ges-docs-est/ges-docs-est.component';
import { DocsEstComponent } from './pages/docs-est/docs-est.component';
import { MatrizEvaluacionesComponent } from './pages/matriz-evaluaciones/matriz-evaluaciones.component';
import { SendEvaComponent } from './pages/send-eva/send-eva.component';
import { PruebasComponent } from './pages/pruebas/pruebas.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    GesDocosProfeComponent,
    ProfileComponent,
    GesEvaluacionesComponent,
    GesDocsEstComponent,
    DocsEstComponent,
    MatrizEvaluacionesComponent,
    SendEvaComponent,
    PruebasComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    MatCardModule,
    FormsModule,
    MatCardModule,
    MatFormFieldModule,
    MatInputModule,
    ReactiveFormsModule,
    MatButtonModule,
    BrowserAnimationsModule,
    HttpClientModule,
    MatExpansionModule,
    MatTableModule,
    MatChipsModule

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
