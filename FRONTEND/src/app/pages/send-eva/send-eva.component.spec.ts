import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SendEvaComponent } from './send-eva.component';

describe('SendEvaComponent', () => {
  let component: SendEvaComponent;
  let fixture: ComponentFixture<SendEvaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SendEvaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SendEvaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
