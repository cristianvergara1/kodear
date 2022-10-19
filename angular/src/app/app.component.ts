import { Component } from '@angular/core';
import { Title } from '@angular/platform-browser';

declare var jQuery: any;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {
  title = 'Kodear | Ejercicio';
  constructor(private titleService:Title) {
    console.log('Inicio'); //5
  }

  ngOnInit(){
    this.titleService.setTitle(this.title);
    (function ($) {
      $(document).ready(function(){

        $('.sidebarCollapse').on('click', function () {
          $('#sidebar').toggleClass('active');
        });

      });
    })(jQuery);
  }

}
