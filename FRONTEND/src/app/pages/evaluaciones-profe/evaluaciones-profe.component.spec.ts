import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EvaluacionesProfeComponent } from './evaluaciones-profe.component';

describe('EvaluacionesProfeComponent', () => {
  let component: EvaluacionesProfeComponent;
  let fixture: ComponentFixture<EvaluacionesProfeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EvaluacionesProfeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EvaluacionesProfeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
