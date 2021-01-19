import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RubrosProfeComponent } from './rubros-profe.component';

describe('RubrosProfeComponent', () => {
  let component: RubrosProfeComponent;
  let fixture: ComponentFixture<RubrosProfeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RubrosProfeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RubrosProfeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
