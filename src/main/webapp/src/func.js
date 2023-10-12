/* para el menu desplegable */
const btnShow = document.getElementById('show');
const menu = document.getElementById('scroll');

let menuVisible = false; // Variable de estado para rastrear la visibilidad del menú

/* para redirecionar nosotros */

const about = document.getElementById('about');
const footer = document.getElementById('footer');




/* si se presiona el botón entonces... */
btnShow.addEventListener('click', () => {       
    if (menuVisible) {
        // Si el menú está visible, ocultarlo
        menu.style.display = 'none';
        menuVisible = false;
    } else {
        // Si el menú está oculto, mostrarlo
        menu.style.display = 'flex';
        menu.style.position = 'absolute';
        menu.style.flexDirection = 'column';
        menu.style.zIndex = '1';
        menu.style.backgroundColor = 'rgb(23 23 23)';    
        menu.style.width = '100vw';
        menu.style.height = '40vh';
        menu.style.top = '7.9vh';        
        menuVisible = true;
    }
},


about.addEventListener('click', () => {
    // Utilizar smooth scrolling para hacer scroll hacia el pie de página
    footer.scrollIntoView({ behavior: 'smooth' });
})

);


/* script form */

const btnSignIn = document.getElementById("sign-in"),
    btnSignUp = document.getElementById("sign-up"),
    formRegister = document.querySelector(".register"),
    formLogin = document.querySelector(".login");

btnSignIn.addEventListener("click", e => {
    formRegister.classList.add("hide");
    formLogin.classList.remove("hide")
})


btnSignUp.addEventListener("click", e => {
    formLogin.classList.add("hide");
    formRegister.classList.remove("hide")
})

document.querySelector('.form').addEventListener('submit', function (event) {
    var savePasswordCheckbox = document.getElementById('save-password');

    if (savePasswordCheckbox.checked) {
        // Aquí puedes realizar la lógica para guardar la contraseña
        // Puedes usar AJAX para enviarla al servidor o guardarla en una cookie, por ejemplo.
    } else {
        // La opción de guardar contraseña no está marcada, puedes continuar con el envío normal del formulario.
    }
});
