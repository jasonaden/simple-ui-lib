import {NgModule} from '@angular/core';
import {BoxModule} from './box.module';
import {HighlightModule} from './highlight.module';


@NgModule({
  imports: [BoxModule, HighlightModule],
  exports: [BoxModule, HighlightModule]
})
export class SimpleUiLibModule {}