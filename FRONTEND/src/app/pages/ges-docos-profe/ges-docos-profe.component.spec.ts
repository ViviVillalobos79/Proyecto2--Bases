import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GesDocosProfeComponent } from './ges-docos-profe.component';

describe('GesDocosProfeComponent', () => {
  let component: GesDocosProfeComponent;
  let fixture: ComponentFixture<GesDocosProfeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GesDocosProfeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GesDocosProfeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
