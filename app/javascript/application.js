// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"

// hiện Flash Message khi action
// import { Turbo } from "@hotwired/turbo-rails" 
// Turbo.session.drive = false

import "controllers"

let search_icon = document.querySelector('#search-icon');
let searchForm = document.querySelector('.search-form');

search_icon.addEventListener('click', function(e){
    searchForm.classList.toggle('active');
});

