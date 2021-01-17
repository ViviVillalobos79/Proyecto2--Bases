import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './pages/login/login.component';
import { GesDocosProfeComponent} from './pages/ges-docos-profe/ges-docos-profe.component';
import { ProfileComponent } from './pages/profile/profile.component';
import { GesEvaluacionesComponent } from "./pages/ges-evaluaciones/ges-evaluaciones.component";
import { GesDocsEstComponent } from './pages/ges-docs-est/ges-docs-est.component';
import { MatrizEvaluacionesComponent } from './pages/matriz-evaluaciones/matriz-evaluaciones.component';
import { MAR } from '@angular/material/core';
import { SendEvaComponent } from './pages/send-eva/send-eva.component';
import { PruebasComponent } from './pages/pruebas/pruebas.component';
import { from } from 'rxjs';
import { GesCarpetaProfeComponent } from './pages/ges-carpeta-profe/ges-carpeta-profe.component';
import { NoticiasComponent } from './pages/noticias/noticias.component';
import { NotasComponent } from './pages/notas/notas.component';
import { GesCursosComponent } from './pages/ges-cursos/ges-cursos.component';
import { SemestreComponent } from './pages/semestre/semestre.component';
import { InicioComponent } from './pages/inicio/inicio.component';
import { DocsEstComponent } from './pages/docs-est/docs-est.component';


const routes: Routes = [
  { path: "login", component: LoginComponent, pathMatch: "full" },
  { path: "gesDocProfe/:cedula/:idCurso", component: GesDocosProfeComponent, pathMatch:"full"},
  { path: "profile/:cedula", component: ProfileComponent, pathMatch: "full" },
  { path: "gesEvaluaciones/:cedula/:idCurso", component: GesEvaluacionesComponent, pathMatch: "full"},
  { path: "gesDocEst/:carnet/:idCurso/:idCarpeta", component: GesDocsEstComponent, pathMatch: "full" },
  { path: "matrizEvaluaciones/:cedula/:idCurso", component: MatrizEvaluacionesComponent, pathMatch: "full"},
  { path: "sendEva", component: SendEvaComponent, pathMatch: "full" },
  { path: "pruebas", component: PruebasComponent, pathMatch: "full"},
  { path: "carpeta/:cedula/:idCurso/:idCarpeta/:nombreCarpeta", component:GesCarpetaProfeComponent, pathMatch: "full"},
  { path: "noticias/:carnet/:idCurso", component:NoticiasComponent, pathMatch: "full"},
  { path: "notas", component:NotasComponent, pathMatch: "full"},
  { path: "gesCursos", component:GesCursosComponent, pathMatch: "full"},
  { path: "semestre", component:SemestreComponent, pathMatch: "full"},
  { path: "inicio/:username", component:InicioComponent, pathMatch:"full"},
  { path: "docEst/:carnet/:idCurso/:idCarpeta", component:DocsEstComponent, pathMatch:"full"},

  { path: "", component: LoginComponent, pathMatch: "full" },
  { path: "**", component: LoginComponent, pathMatch: "full" }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
