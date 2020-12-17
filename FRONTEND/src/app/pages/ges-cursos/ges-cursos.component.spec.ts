import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GesCursosComponent } from './ges-cursos.component';

describe('GesCursosComponent', () => {
  let component: GesCursosComponent;
  let fixture: ComponentFixture<GesCursosComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GesCursosComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(GesCursosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
