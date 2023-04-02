// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "controllers"
import "@hotwired/turbo-rails"

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
