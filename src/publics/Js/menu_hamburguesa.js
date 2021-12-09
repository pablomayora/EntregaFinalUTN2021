function Menu_Hamburguesa(panelBtn,aside){

document.addEventListener("click",e=>{
    if(e.target.matches(panelBtn)|| e.target.matches(`${panelBtn} *`)){
    document.querySelector(aside).classList.toggle("is-active");}

})


}


function Menu_Hamburguesa2(panelBtn2,nav){
    document.addEventListener("click",e=>{
        if(e.target.matches(panelBtn2)|| e.target.matches(`${panelBtn2} *`)){
            document.querySelector(nav).classList.toggle("is-active2");}
    
    })
}


export const Hamburguesas = 
{
Menu_Hamburguesa,
Menu_Hamburguesa2

};






