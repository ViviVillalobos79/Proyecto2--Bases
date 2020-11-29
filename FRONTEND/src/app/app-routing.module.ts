import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './pages/login/login.component';
import { GesDocosProfeComponent} from './pages/ges-docos-profe/ges-docos-profe.component';
import { ProfileComponent } from './pages/profile/profile.component';

const routes: Routes = [
  { path: "login", component: LoginComponent, pathMatch: "full" },
  { path: "gesDocProfe", component: GesDocosProfeComponent, pathMatch:"full"},
  { path: "login", component: LoginComponent, pathMatch: "full" },
  { path: "profile", component: ProfileComponent, pathMatch: "full" },

  { path: "", component: LoginComponent, pathMatch: "full" },
  { path: "**", component: LoginComponent, pathMatch: "full" }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }