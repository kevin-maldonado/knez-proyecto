/* CREAR USUARIO */
CREATE USER prueba PASSWORD '12345678';
ALTER ROLE prueba WITH SUPERUSER;
ALTER ROLE prueba WITH LOGIN;

/* CREAR DB POSGRESQL*/

CREATE DATABASE "MarketDB"
    WITH 
    OWNER = prueba
    ENCODING = 'UTF8'
    LC_COLLATE = 'es_ES.UTF-8'
    LC_CTYPE = 'es_ES.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

/* CREAR SESIONES */

CREATE SCHEMA IF NOT EXISTS Producto AUTHORIZATION prueba;
CREATE SCHEMA IF NOT EXISTS Categoria AUTHORIZATION prueba;
CREATE SCHEMA IF NOT EXISTS Bodega AUTHORIZATION prueba;
CREATE SCHEMA IF NOT EXISTS Percha AUTHORIZATION prueba;
CREATE SCHEMA IF NOT EXISTS Proveedor AUTHORIZATION prueba;
CREATE SCHEMA IF NOT EXISTS ProductoxCantidad AUTHORIZATION prueba;


SET search_path TO
pg_catalog, public, Producto, Categoria, Bodega, Percha, Proveedor, ProductoxCantidad;

GRANT PRIVILEGES ON DATABASE MarketDB TO prueba;