import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GesCarpetaProfeComponent } from './ges-carpeta-profe.component';

describe('GesCarpetaProfeComponent', () => {
  let component: GesCarpetaProfeComponent;
  let fixture: ComponentFixture<GesCarpetaProfeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GesCarpetaProfeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(GesCarpetaProfeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
