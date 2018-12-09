package com.web.springmvc;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    
    @RequestMapping(value="/home", method=RequestMethod.GET)
    public String goHome() {
        return "home";
    }
    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String mostrarPrincipal(Model model) {
    	List<String> peliculas= new ArrayList<>();
    	peliculas.add("peli1");
    	peliculas.add("peli2");
    	peliculas.add("peli3");
    	peliculas.add("peli4");
    	model.addAttribute("peliculas",peliculas);
        return "home";
    }
    
    
    @RequestMapping(value="/detail")
    public String MostrarDetalle(Model model) {
    	String tituloPelicula = "Rapidos y Furiosos";
    	int duracion = 136;
    	double precioEntrada = 50;
    	
    	model.addAttribute("titulo", tituloPelicula);
    	model.addAttribute("duracion", duracion);
    	model.addAttribute("precio", precioEntrada);
    	return "detail";
    }
    
}

