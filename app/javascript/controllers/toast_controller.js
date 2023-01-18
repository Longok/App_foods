import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const closeBtn = document.querySelector('#closeIcon');
    const toast = document.getElementById('toast');

    closeBtn.addEventListener('click', function(){
        toast.style.display = "none";
    });
  }
}