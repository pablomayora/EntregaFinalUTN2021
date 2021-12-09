import{Hamburguesas} from "./menu_hamburguesa.js";
import slider from "./slider.js";


slider();
document.addEventListener("DOMContentLoaded",(e)=>{



   Hamburguesas.Menu_Hamburguesa(".panel-btn",".aside");


});  

document.addEventListener("DOMContentLoaded",(e)=>{

    Hamburguesas.Menu_Hamburguesa2(".panel-btn_s",".menu");


})

