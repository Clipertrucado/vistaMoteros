package Controladores;
   
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/usuario")
public class LoginRegistroControlador {

    // Acción para mostrar el formulario de registro de usuario
    @RequestMapping("/registroUsuario")
    public ModelAndView mostrarFormularioRegistroUsuario() {
        ModelAndView modelAndView = new ModelAndView("registroUsuario");
        return modelAndView;
    }

    // Acción para procesar el formulario de registro de usuario
    @PostMapping("/registroUsuario")
    public ModelAndView procesarRegistroUsuario(
        @RequestParam("nombre_usuario") String nombre,
        @RequestParam("apellidos_usuario") String apellidos,
        @RequestParam("fecha_nacimiento_usuario") String fechaNacimiento,
        @RequestParam("email_usuario") String email,
        @RequestParam("telefono_usuario") String telefono,
        @RequestParam("nick_usuario") String nick,
        @RequestParam("dni_usuario") String dni,
        @RequestParam("contraseña_usuario") String contraseña,
        @RequestParam("confirmar_contraseña_usuario") String confirmarContraseña
    ) {
        ModelAndView modelAndView = new ModelAndView("registroUsuario");

        // Lógica para verificar si las contraseñas coinciden
        if (!contraseña.equals(confirmarContraseña)) {
            modelAndView.addObject("error", "Las contraseñas no coinciden.");
            return modelAndView;
        }

        // Lógica para guardar el usuario en la base de datos (simulada)
        // Aquí deberías llamar a tu servicio que guarda el usuario en la base de datos
        // Ejemplo: usuarioService.registrarUsuario(new Usuario(nombre, apellidos, ...));

        modelAndView.addObject("mensaje", "Usuario registrado exitosamente");
        return modelAndView;
    }

    // Acción para mostrar el formulario de registro de club
    @RequestMapping("/registroClub")
    public ModelAndView mostrarFormularioRegistroClub() {
        ModelAndView modelAndView = new ModelAndView("registroClub");
        return modelAndView;
    }

    // Acción para procesar el formulario de registro de club
    @PostMapping("/registroClub")
    public ModelAndView procesarRegistroClub(
        @RequestParam("nombre_club") String nombreClub,
        @RequestParam("colores_club") String coloresClub,
        @RequestParam("mail_club") String mailClub,
        @RequestParam("contraseña_club") String contraseñaClub,
        @RequestParam("confirmar_contraseña_club") String confirmarContraseñaClub
    ) {
        ModelAndView modelAndView = new ModelAndView("registroClub");

        // Lógica para verificar si las contraseñas coinciden
        if (!contraseñaClub.equals(confirmarContraseñaClub)) {
            modelAndView.addObject("error", "Las contraseñas no coinciden.");
            return modelAndView;
        }

        // Lógica para guardar el club en la base de datos (simulada)
        // Aquí deberías llamar a tu servicio que guarda el club en la base de datos
        // Ejemplo: clubService.registrarClub(new Club(nombreClub, coloresClub, mailClub, ...));

        modelAndView.addObject("mensaje", "Club registrado exitosamente");
        return modelAndView;
    }

    // Acción para mostrar el formulario de inicio de sesión
    @RequestMapping("/iniciarSesion")
    public ModelAndView mostrarFormularioIniciarSesion() {
        ModelAndView modelAndView = new ModelAndView("iniciarSesion");
        return modelAndView;
    }

    // Acción para procesar el inicio de sesión
    @PostMapping("/iniciarSesion")
    public ModelAndView procesarIniciarSesion(
        @RequestParam("mail_login") String mail,
        @RequestParam("contraseña_login") String contraseña
    ) {
        ModelAndView modelAndView = new ModelAndView("iniciarSesion");
        
        System.out.print("mail: "+mail+" contraseña: "+contraseña);
        // Lógica para verificar las credenciales del usuario
        // Aquí deberías verificar si el usuario existe y la contraseña es correcta
        // Ejemplo: boolean exito = usuarioService.iniciarSesion(mail, contraseña);

        boolean exito = true; // Este es un valor simulado

        if (exito) {
            modelAndView.addObject("mensaje", "Sesión iniciada correctamente");
            modelAndView.setViewName("home"); // Redirigir a la página de inicio
        } else {
            modelAndView.addObject("error", "Credenciales incorrectas.");
        }

        return modelAndView;
    }

}
