import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './pages/login/login.component';
import { GesDocosProfeComponent} from './pages/ges-docos-profe/ges-docos-profe.component';
import { ProfileComponent } from './pages/profile/profile.component';
import { GesEvaluacionesComponent } from "./pages/ges-evaluaciones/ges-evaluaciones.component";
import { GesDocsEstComponent } from './pages/ges-docs-est/ges-docs-est.component';

const routes: Routes = [
  { path: "login", component: LoginComponent, pathMatch: "full" },
  { path: "gesDocProfe/:cedula", component: GesDocosProfeComponent, pathMatch:"full"},
  { path: "login", component: LoginComponent, pathMatch: "full" },
  { path: "profile", component: ProfileComponent, pathMatch: "full" },
  { path: "gesEvaluaciones/:cedula", component: GesEvaluacionesComponent, pathMatch: "full"},
  { path: "gesDocEst", component: GesDocsEstComponent, pathMatch: "full" },

  { path: "", component: LoginComponent, pathMatch: "full" },
  { path: "**", component: LoginComponent, pathMatch: "full" }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
