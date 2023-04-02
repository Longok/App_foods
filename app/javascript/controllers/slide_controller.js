import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {  
        let index = 0;
        function autoSlide(){    
            setTimeout(autoSlide, 4000);
        
            let i;
            let items = document.querySelectorAll('.itemImg');
        
            for(i = 0 ; i < items.length; i++) {
                items[i].style.display = "none";
            }
            index ++;
            if( index > items.length) {
                index = 1;
            }
            items[index - 1].style.display = "block";
        }
        autoSlide();
        
    }
    
}