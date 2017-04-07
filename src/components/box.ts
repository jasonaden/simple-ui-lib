import {Component} from '@angular/core';

@Component({
  selector: 'Box',
  templateUrl: "./box.html",
  styleUrls: ['./box.css']
})
export class Box {
  constructor(public title: string) {
    
  }
}

