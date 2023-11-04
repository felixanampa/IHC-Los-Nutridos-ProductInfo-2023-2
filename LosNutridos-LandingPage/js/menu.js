const enlaces = document.querySelectorAll("nav a");
const secciones = document.querySelectorAll("section");
enlaces.forEach(enlace => {
    enlace.addEventListener("click", function(e) {
        e.preventDefault(); 
        const href = this.getAttribute("href");
        secciones.forEach(seccion => {
            seccion.style.display = "none";
        });
        const seccionMostrar = document.querySelector(href);
        if (seccionMostrar) {
            seccionMostrar.style.display = "block";
        }
    });
});