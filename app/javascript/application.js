// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "controllers"
import "@hotwired/turbo-rails"

// hiện Flash Message khi action
// import { Turbo } from "@hotwired/turbo-rails" 
// Turbo.session.drive = false



// // slide
// let slideIndex = 0;
// autoShowSlide();
// function autoShowSlide(){
//     let i;
//     let items = document.getElementsByClassName('itemImg');
    
//     for( i = 0; i < items.length; i++ ){
//         items[i].style.display = "none";
//     }
//     slideIndex ++;
//     if ( slideIndex > items.length ) {slideIndex = 1}
//     items[slideIndex - 1].style.display = "block";
//     setTimeout(autoShowSlide, 3000);
    
// }
// // document.getElementById('next').onclick = function() {
//     //     let listItem = document.querySelectorAll('#slide .slide-item')
//     //     document.getElementById('slide').appendChild(listItem[0]);
//     // } 
    
//     // document.getElementById('prev').onclick = function() {
//         //     let listItem = document.querySelectorAll('#slide .slide-item')
//         //     document.getElementById('slide').prepend(listItem[listItem.length -1]);
// // }

// // window.addEventListener('load', function(){

// //     let slider = document.querySelector('#slide');
// //     let slideItem = this.document.querySelectorAll('.slide-items');
// //     let nextBtn = document.querySelector('#next');
// //     let prevBtn = document.querySelector('#prev');


// // });


// // auto change image product with category in home page
let cateImg = 0;
function autoShowCateImg(){
    let i;
    let getimg = document.getElementsByClassName('cateImg');
    
    for( i = 0; i < getimg.length; i++ ){
        getimg[i].style.display = "none";
    }
    cateImg ++;
    if ( cateImg > getimg.length ) {
        cateImg = 1
    }
    getimg[cateImg - 1].style.display = "block";
    setTimeout(autoShowCateImg, 500);
}
autoShowCateImg();
