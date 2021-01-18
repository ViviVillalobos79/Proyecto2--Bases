import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NoticiasProfeComponent } from './noticias-profe.component';

describe('NoticiasProfeComponent', () => {
  let component: NoticiasProfeComponent;
  let fixture: ComponentFixture<NoticiasProfeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NoticiasProfeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(NoticiasProfeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
