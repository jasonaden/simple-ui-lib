import {Component} from '@angular/core';

@Component({
  selector: 'Box',
  templateUrl: "<div><ng-content></ng-content></div>",
  styleUrls: ['div {border: 1px solid black;}']
})
export class Box { }

