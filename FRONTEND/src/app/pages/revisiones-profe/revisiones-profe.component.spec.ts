import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RevisionesProfeComponent } from './revisiones-profe.component';

describe('RevisionesProfeComponent', () => {
  let component: RevisionesProfeComponent;
  let fixture: ComponentFixture<RevisionesProfeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RevisionesProfeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RevisionesProfeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
