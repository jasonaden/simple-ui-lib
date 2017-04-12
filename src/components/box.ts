import {Component} from '@angular/core';

@Component({
  selector: 'Box',
  template: "<div><ng-content></ng-content></div>",
  styles: ['div {border: 1px solid black;}']
})
export class Box { }

