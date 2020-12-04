import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MatrizEvaluacionesComponent } from './matriz-evaluaciones.component';

describe('MatrizEvaluacionesComponent', () => {
  let component: MatrizEvaluacionesComponent;
  let fixture: ComponentFixture<MatrizEvaluacionesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ MatrizEvaluacionesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(MatrizEvaluacionesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
