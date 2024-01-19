import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {  
    
    // Slide

        let refreshSlider = setInterval(()=> {next.click()}, 5000);
        document.getElementById('next').onclick = function(){
            let lists = document.querySelectorAll('#slide .item');
            document.getElementById('slide').appendChild(lists[0]);
        }
        document.getElementById('prev').onclick = function(){
            let lists = document.querySelectorAll('#slide .item');
            document.getElementById('slide').prepend(lists[lists.length - 1]);
        }

        function reloadSlider() {
            clearInterval(refreshSlider);
            refreshSlider = setInterval(()=> {next.click()}, 5000);
        }
        reloadSlider;
    }

}