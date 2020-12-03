import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GesEvaluacionesComponent } from './ges-evaluaciones.component';

describe('GesEvaluacionesComponent', () => {
  let component: GesEvaluacionesComponent;
  let fixture: ComponentFixture<GesEvaluacionesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GesEvaluacionesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(GesEvaluacionesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
