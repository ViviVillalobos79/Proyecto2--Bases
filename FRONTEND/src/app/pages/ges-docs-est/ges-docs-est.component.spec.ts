import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { GesDocsEstComponent } from './ges-docs-est.component';

describe('GesDocsEstComponent', () => {
  let component: GesDocsEstComponent;
  let fixture: ComponentFixture<GesDocsEstComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ GesDocsEstComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(GesDocsEstComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
