import {NgModule} from '@angular/core';
import {Box} from './box';
export * from './box';

@NgModule({
  declarations: [Box],
  exports: [Box]
})
export class BoxModule {}