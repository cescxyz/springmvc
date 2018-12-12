package com.web.springmvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.springmvc.dao.PeliculaDao;
import com.web.springmvc.models.Pelicula;


@Service("peliculaService")
@Transactional
public class PeliculaServiceImpl implements PeliculaService{

	@Autowired
    private PeliculaDao peliculaDao;
	
	@Override
	public List<Pelicula> listarPeliculas() {
		return peliculaDao.findAllPeliculas();
	}

	@Override
	public Pelicula recuperarPelicula(Pelicula pelicula) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void agregarPelicula(Pelicula pelicula) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modificarPelicula(Pelicula pelicula) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void eliminarPelicula(Pelicula pelicula) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public long contarPeliculas() {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
