import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DocsEstComponent } from './docs-est.component';

describe('DocsEstComponent', () => {
  let component: DocsEstComponent;
  let fixture: ComponentFixture<DocsEstComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DocsEstComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DocsEstComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
