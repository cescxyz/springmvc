drop table if exists persona;

create table persona (  
    id_persona identity primary key,  
    nombre varchar(50) not null,  
    ape_paterno varchar(50) not null,  
    ape_materno varchar(50),  
    email varchar(50) not null,
    duracion int,
    fecha date
);

drop table if exists pelicula;

create table pelicula (  
    id_pelicula identity primary key,  
    titulo varchar(50) not null,  
    duracion int,  
    clasificacion varchar(50),
    genero varchar(50),  
    imagen varchar(50),
    fecha date,
    status varchar(50),
    descripcion varchar(100),
    detalle varchar(500)
);