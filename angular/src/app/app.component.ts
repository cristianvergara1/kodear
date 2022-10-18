import { Component } from '@angular/core';

declare var jQuery: any;

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Kodear | Ejercicio';
  constructor() {
    console.log('Inicio'); //5
  }

  ngOnInit(){
    (function ($) {
      $(document).ready(function(){

        $('.sidebarCollapse').on('click', function () {
          $('#sidebar').toggleClass('active');
        });

      });
    })(jQuery);
  }

}
