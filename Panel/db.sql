ALTER TABLE `articulo` DROP FOREIGN KEY `categoria_articulo`;
ALTER TABLE `producto_tag` DROP FOREIGN KEY `fk_producto_tag`;
ALTER TABLE `producto_tag` DROP FOREIGN KEY `fk_producto_tag_1`;
ALTER TABLE `articulo_tag` DROP FOREIGN KEY `fk_articulo_tag`;
ALTER TABLE `articulo_tag` DROP FOREIGN KEY `fk_articulo_tag_1`;
ALTER TABLE `producto_foto` DROP FOREIGN KEY `fk_producto_foto`;
ALTER TABLE `articulo_foto` DROP FOREIGN KEY `fk_articulo_foto`;
ALTER TABLE `comentario` DROP FOREIGN KEY `fk_Comentario`;
ALTER TABLE `sesion` DROP FOREIGN KEY `fk_sesion`;
ALTER TABLE `articulo` DROP FOREIGN KEY `fk_articulo`;

DROP TABLE `usuario`;
DROP TABLE `producto`;
DROP TABLE `tag`;
DROP TABLE `articulo`;
DROP TABLE `categoria`;
DROP TABLE `producto_tag`;
DROP TABLE `articulo_tag`;
DROP TABLE `producto_foto`;
DROP TABLE `articulo_foto`;
DROP TABLE `comentario`;
DROP TABLE `sesion`;

CREATE TABLE `usuario` (
`Id_Usuario` int(24) NOT NULL AUTO_INCREMENT,
`Nombres` varchar(255) NULL,
`Apellido_P` varchar(255) NULL,
`Apellido_M` varchar(255) NULL,
`Correo` varchar(255) NULL,
`Password` varchar(255) NULL,
PRIMARY KEY (`Id_Usuario`) 
)
COMMENT = 'Tabla para almacenar los usuarios';

CREATE TABLE `producto` (
`Id_Producto` int(24) NOT NULL AUTO_INCREMENT,
`Titulo` varchar(255) NULL,
`Descripcion` varchar(255) NULL,
`Caducidad` varchar(24) NULL,
`Ingredientes` varchar(255) NULL,
`Estado` int(2) NULL COMMENT '0 inactivo, 1 activo',
PRIMARY KEY (`Id_Producto`) 
);

CREATE TABLE `tag` (
`Id_Tag` int(24) NOT NULL AUTO_INCREMENT,
`Tag` varchar(64) NULL COMMENT 'El tag es una palabra clave que será usada en Productos, Articulos y recetas',
PRIMARY KEY (`Id_Tag`) 
);

CREATE TABLE `articulo` (
`Id_Articulo` int(24) NOT NULL AUTO_INCREMENT,
`Id_Usuario` int(24) NOT NULL,
`Titulo` varchar(64) NULL,
`Cuerpo` text NULL,
`Fecha` timestamp NULL,
`Id_Categoria` int(24) NULL,
`Estado` int(2) NULL,
`SEO` varchar(255) NULL COMMENT 'Pequeña descripción para el posicionamiento',
PRIMARY KEY (`Id_Articulo`) 
);

CREATE TABLE `categoria` (
`Id_Categoria` int(24) NOT NULL AUTO_INCREMENT,
`Categoria` varchar(64) NULL COMMENT 'Categorias',
PRIMARY KEY (`Id_Categoria`) 
)
COMMENT = 'Posiblemente
-Artiiculos
-Datos Curiosos
-Recetas';

CREATE TABLE `producto_tag` (
`Id_Producto` int(24) NOT NULL,
`Id_Tag` int(24) NOT NULL
)
COMMENT = 'palabras clave para productos';

CREATE TABLE `articulo_tag` (
`Id_Articulo` int(24) NOT NULL,
`Id_Tag` int(24) NOT NULL
);

CREATE TABLE `producto_foto` (
`Id_Producto_Foto` int(64) NOT NULL AUTO_INCREMENT,
`Id_Producto` int(24) NOT NULL,
`Titulo` varchar(64) NULL,
`Ruta` varchar(255) NULL COMMENT 'ruta del archivo',
`Estado` int(2) NULL COMMENT '0 inactivo, 1 activo',
PRIMARY KEY (`Id_Producto_Foto`) 
);

CREATE TABLE `articulo_foto` (
`Id_Articulo_Foto` int(64) NOT NULL AUTO_INCREMENT,
`Id_Articulo` int  NOT NULL,
`Titulo` varchar(64) NULL,
`Ruta` varchar(255) NULL,
`Estado` int(2) NULL COMMENT '0 inactivo, 1 activo',
PRIMARY KEY (`Id_Articulo_Foto`) 
);

CREATE TABLE `comentario` (
`Id_Comentario` int(64) NOT NULL AUTO_INCREMENT,
`Id_Articulo` int(24) NOT NULL,
`Nombre` varchar(64) NULL,
`Cuerpo` varchar(255) NULL,
`Like` int(24) NULL DEFAULT 0,
`Fecha` timestamp NULL,
`Estado` int(2) NULL COMMENT '0 Inactivo, 1 activo',
PRIMARY KEY (`Id_Comentario`) 
);

CREATE TABLE `sesion` (
`Id_Sesion` int(24) NOT NULL,
`Id_Usuario` int(24) NOT NULL,
`Codigo` varchar(64) NULL,
`IP` varchar(255) NULL,
`Fecha` timestamp NULL,
`Estado` int(2) NULL COMMENT '0- inactivo, 1- activo ',
PRIMARY KEY (`Id_Sesion`) 
);


ALTER TABLE `articulo` ADD CONSTRAINT `categoria_articulo` FOREIGN KEY (`Id_Categoria`) REFERENCES `categoria` (`Id_Categoria`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `producto_tag` ADD CONSTRAINT `fk_producto_tag` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `producto_tag` ADD CONSTRAINT `fk_producto_tag_1` FOREIGN KEY (`Id_Tag`) REFERENCES `tag` (`Id_Tag`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `articulo_tag` ADD CONSTRAINT `fk_articulo_tag` FOREIGN KEY (`Id_Articulo`) REFERENCES `articulo` (`Id_Articulo`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `articulo_tag` ADD CONSTRAINT `fk_articulo_tag_1` FOREIGN KEY (`Id_Tag`) REFERENCES `tag` (`Id_Tag`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `producto_foto` ADD CONSTRAINT `fk_producto_foto` FOREIGN KEY (`Id_Producto`) REFERENCES `producto` (`Id_Producto`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `articulo_foto` ADD CONSTRAINT `fk_articulo_foto` FOREIGN KEY (`Id_Articulo`) REFERENCES `articulo` (`Id_Articulo`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `comentario` ADD CONSTRAINT `fk_Comentario` FOREIGN KEY (`Id_Articulo`) REFERENCES `articulo` (`Id_Articulo`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `sesion` ADD CONSTRAINT `fk_sesion` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `articulo` ADD CONSTRAINT `fk_articulo` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT;

