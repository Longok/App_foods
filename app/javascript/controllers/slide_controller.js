import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {  
    
    // Slide
        let active = 0;
        let list = document.querySelector('.slider .list');
        let items = document.querySelectorAll('.items');
        let prev = document.getElementById('prev');
        let next = document.getElementById('next');

        let lengthItems = items.length - 1;
        
        next.onclick = function() {

            if(active + 1 > lengthItems){
                active = 0;
            }else {
                active = active + 1;
            }
            reloadSlider();
        }
        
        prev.onclick = function() {
            if(active - 1 < 0) {
                active = lengthItems;
            }else {
                active = active - 1;
            }
            reloadSlider();
        }

        function reloadSlider() {
            let checkLeft = items[active].offsetLeft;
            list.style.left = -checkLeft + 'px';
            clearInterval(refreshSlider);
            refreshSlider = setInterval(()=> {next.click()}, 5000);
        }

        let refreshSlider = setInterval(()=> {next.click()}, 5000);

    }

}