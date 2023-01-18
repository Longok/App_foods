import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {  
    const navbar = document.querySelector('#menu');
    const menuBtn = document.querySelector('.menuBtn');
    const closeMenu = document.querySelector('#closeMenu');
    const modal = document.querySelector('.modal');
    
    menuBtn.addEventListener('click', function(){
        navbar.classList.toggle('active');
        navbar.classList.toggle('modal');
    });
    closeMenu.addEventListener('click', function(){
        navbar.classList.remove('active');
        navbar.classList.remove('modal');
    });

  }
}
