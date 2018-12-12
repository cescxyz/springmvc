package com.web.springmvc.services;

import java.util.List;

import com.web.springmvc.models.Pelicula;


public interface PeliculaService {
	
    public List<Pelicula> listarPeliculas();

    public Pelicula recuperarPelicula(Pelicula pelicula);

    public void agregarPelicula(Pelicula pelicula);

    public void modificarPelicula(Pelicula pelicula);

    public void eliminarPelicula(Pelicula pelicula);
    
    public long contarPeliculas();

}
