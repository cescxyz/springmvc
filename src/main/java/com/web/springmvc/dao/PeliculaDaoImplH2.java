package com.web.springmvc.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.web.springmvc.models.Pelicula;


@Repository
public class PeliculaDaoImplH2 implements PeliculaDao{

	
	private JdbcTemplate jdbcTemplate;
	
    @Autowired
    public void setDataSource(DataSource dataSource) {
        // No es común que se utilicen las 2 plantillas, sin embargo si es posible
        // La diferencia es el manejo de parámetros por indice o por nombre
        this.jdbcTemplate = new JdbcTemplate(dataSource);
        //this.namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }
    
    
    /**
     * Queries
     */
	
    private static final String SQL_SELECT_PELICULA = "SELECT id_pelicula, titulo, duracion, clasificacion, genero, imagen, fecha, status FROM PELICULA";
	
	@Override
	public void insertPelicula(Pelicula pelicula) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePersona(Pelicula pelicula) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePersona(Pelicula pelicula) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Pelicula findPersonaById(long idPelicula) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pelicula> findAllPeliculas() {
        //Esta consulta es equivalente
        //String sql = "SELECT * FROM PERSONA";
        RowMapper<Pelicula> peliculaRowMapper = BeanPropertyRowMapper.newInstance(Pelicula.class);
        return this.jdbcTemplate.query(SQL_SELECT_PELICULA, peliculaRowMapper);
	}

}
