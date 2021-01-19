import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VerRubrosRevisarComponent } from './ver-rubros-revisar.component';

describe('VerRubrosRevisarComponent', () => {
  let component: VerRubrosRevisarComponent;
  let fixture: ComponentFixture<VerRubrosRevisarComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ VerRubrosRevisarComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(VerRubrosRevisarComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
