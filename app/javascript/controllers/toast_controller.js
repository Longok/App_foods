import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const closeIcon = document.querySelector('#closeIcon');
    const toast = document.getElementById('toast');

    closeIcon.addEventListener('click', function(){
        toast.style.display = "none";

    });
  }
}