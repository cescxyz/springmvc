package com.web.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.web.springmvc.models.Pelicula;


public class PeliculaRowMapper implements RowMapper<Pelicula>{
	
    /**
     * Metodo que es llamado por la plantilla de Spring. 
     * Este es un metodo callback
     */
    @Override
    public Pelicula mapRow(ResultSet rs, int rowNum) throws SQLException {
        //Creacion del objeto persona por cada 
        //registro encontrado en el resultSet
        Pelicula pelicula = new Pelicula();
        pelicula.setId(rs.getInt("id_pelicula"));
        pelicula.setTitulo(rs.getString("titulo"));
        pelicula.setDuracion(rs.getInt("duracion"));
        pelicula.setClasificacion(rs.getString("clasificacion"));
        pelicula.setGenero(rs.getString("genero"));
        pelicula.setImagen(rs.getString("imagen"));
        pelicula.setFechaEstreno(rs.getDate("fecha"));
        pelicula.setStatus(rs.getString("status"));
        
        return pelicula;
    }

}
