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


const routes: Routes = [
  { path: "login", component: LoginComponent, pathMatch: "full" },
  { path: "gesDocProfe/:cedula/:idCurso", component: GesDocosProfeComponent, pathMatch:"full"},
  { path: "profile/:cedula", component: ProfileComponent, pathMatch: "full" },
  { path: "gesEvaluaciones/:cedula/:idCurso", component: GesEvaluacionesComponent, pathMatch: "full"},
  { path: "gesDocEst/:carnet", component: GesDocsEstComponent, pathMatch: "full" },
  { path: "matrizEvaluaciones/:cedula/:idCurso", component: MatrizEvaluacionesComponent, pathMatch: "full"},
  { path: "gesDocEst", component: GesDocsEstComponent, pathMatch: "full" },
  { path: "sendEva", component: SendEvaComponent, pathMatch: "full" },
  { path: "pruebas/:cedula/:idCurso", component: PruebasComponent, pathMatch: "full"},

  { path: "", component: LoginComponent, pathMatch: "full" },
  { path: "**", component: LoginComponent, pathMatch: "full" }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
