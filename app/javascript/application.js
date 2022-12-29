// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"

// hiện Flash Message khi action
// import { Turbo } from "@hotwired/turbo-rails" 
// Turbo.session.drive = false

import "controllers"

// search btn
let search_icon = document.querySelector('#search-icon');
let searchForm = document.querySelector('.search-form');

search_icon.addEventListener('click', function(e){
    searchForm.classList.toggle('active');
});

// slide
let slideIndex = 0;
autoShowSlide();
function autoShowSlide(){
    let i = 0;
    let items = document.getElementsByClassName('slide-item');

    for( i = 0; i < items.length; i++ ){
        items[i].style.display = "none";
    }
    slideIndex ++;
    if ( slideIndex > items.length ) {
        slideIndex = 1
    }
    items[slideIndex - 1].style.display = "block";
    setTimeout(autoShowSlide, 3000);

}
document.getElementById('next').onclick = function() {
    let listItem = document.querySelectorAll('#slide .slide-item')
    document.getElementById('slide').appendChild(listItem[0]);
} 

document.getElementById('prev').onclick = function() {
    let listItem = document.querySelectorAll('#slide .slide-item')
    document.getElementById('slide').prepend(listItem[listItem.length -1]);
}
