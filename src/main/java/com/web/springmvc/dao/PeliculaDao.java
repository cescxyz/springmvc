package com.web.springmvc.dao;

import java.util.List;

import com.web.springmvc.models.Pelicula;


public interface PeliculaDao {
	
	   void insertPelicula(Pelicula pelicula);

	    void updatePersona(Pelicula pelicula);

	    void deletePersona(Pelicula pelicula);

	    Pelicula findPersonaById(long idPelicula);

	    List<Pelicula> findAllPeliculas();


}
