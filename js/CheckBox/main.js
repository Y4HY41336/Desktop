const main = document.querySelector(".main");
const circle = document.querySelector(".circle");
let isActive = false;

main.addEventListener("click",activate());
circle.addEventListener("click", activate());


function activate() {
    if(!isActive){
        circle.classList.add("active");
        console.log('a');
    }
    else{
        circle.classList.remove("active");

    }
    
}


