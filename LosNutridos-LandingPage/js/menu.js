const banner = document.querySelector("#banner");
const services = document.querySelector("#services");
const portafolio = document.querySelector("#portafolio");

/*Menu Inicio(Banner)*/
services.addEventListener("click", (s) =>{
    s.preventDefault();

    const sectionI = document.querySelector(".banner");
    sectionI.scrollIntoView({behavior:"smooth"});
})

/*Menu Servicios*/
services.addEventListener("click", (s) =>{
    s.preventDefault();

    const sectionS = document.querySelector(".services");
    sectionS.scrollIntoView({behavior:"smooth"});
})

/*Menu Portafolio*/
portafolio.addEventListener("click", (p) =>{
    p.preventDefault();

    const sectionP = document.querySelector(".portafolio");
    sectionP.scrollIntoView({behavior:"smooth"});
})