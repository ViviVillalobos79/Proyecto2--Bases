import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EstudiantesMatriculadosComponent } from './estudiantes-matriculados.component';

describe('EstudiantesMatriculadosComponent', () => {
  let component: EstudiantesMatriculadosComponent;
  let fixture: ComponentFixture<EstudiantesMatriculadosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EstudiantesMatriculadosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EstudiantesMatriculadosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
