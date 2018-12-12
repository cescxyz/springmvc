package com.web.springmvc.controllers;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.springmvc.models.Pelicula;

@Controller
public class HomeController {

	@Autowired
    JdbcTemplate jdbcTemplate;
    
    @RequestMapping(value="/home", method=RequestMethod.GET)
    public String goHome() {
        return "home";
    }
    
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String mostrarPrincipal(Model model) {
    	List<Pelicula> peliculas= new ArrayList<>();
    	peliculas = getPeliculas();
    	model.addAttribute("peliculas",peliculas);
    	
    	//Testing
    	String sql = "select count(*) from persona";
        int noPersonas = jdbcTemplate.queryForObject(sql, Integer.class);
    	
        model.addAttribute("personasCount",noPersonas);
        
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
    
    public List<Pelicula> getPeliculas(){
    	SimpleDateFormat formater = new SimpleDateFormat("dd-MM-yyyy");
    	List<Pelicula> peliculas = null;
    	try {
	    	peliculas = new ArrayList<>();
	    	Pelicula p1 = new Pelicula();
	    	Pelicula p2 = new Pelicula();
	    	Pelicula p3 = new Pelicula();
	    	p1.setId(1);p1.setTitulo("Fast 1");p1.setDuracion(120);p1.setClasificacion("B");p1.setGenero("Aventura");p1.setFechaEstreno(formater.parse("02-05-2018"));
	    	p2.setId(2);p2.setTitulo("Fast 2");p2.setDuracion(320);p2.setClasificacion("B-15");p2.setGenero("Terror");p2.setFechaEstreno(formater.parse("02-05-2018"));p2.setStatus("Inactiva");
	    	p3.setId(3);p3.setTitulo("Fast 3");p3.setDuracion(820);p3.setClasificacion("C");p3.setGenero("Accion");p3.setFechaEstreno(formater.parse("10-10-2018"));
	    	peliculas.add(p1);peliculas.add(p2);peliculas.add(p3);
    	}catch (Exception e) {
			e.printStackTrace();
		}
    	return peliculas;
    }
}

