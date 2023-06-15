CREATE DATABASE catCafe_db; /*cree la base de datos */

SHOW DATABASES;

USE catCafe_db; /* uso la base de datos creada */

SHOW TABLES;

/* creo la tabla segun la informacion requerida */
CREATE TABLE gatitos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    edad INT,
    peso DECIMAL(4, 2),
    comportamiento VARCHAR(100),
    color VARCHAR(50),
    ojos VARCHAR(50)
);

SHOW TABLES;

/* describe la tabla indicada */
DESCRIBE gatitos;

/* muestra TOTO(*) el contenido de la tabla */
SELECT * FROM gatitos;

/* inserto los datos de los gatitos */
INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Rocket', 3, 3.0, 'Le gusta dormir mucho', 'Blanco', 'Celestes');

/* elimine una parte de la tabla porque lo habia repetido */
DELETE FROM gatitos WHERE id = 2;

INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Pinto', 5, 3.5, 'Le gustan los mimos', 'Naranja con blanco', 'Amarillo con Verde');

INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Sunny', 2, 5.0, 'Le encanta jugar con pelotitas', 'Negro', 'Amarillentos');

INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Emelia', 5, 4.4, 'Le encanta reposar donde hay sol', 'Gris con Negro', 'Amarillentos');

INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Nikki', 4, 4.3, 'No se despega de Ricochet', 'Gris', 'Verdes claros');

INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Ricochet', 4, 4.7, 'Le gustan los lugares altos', 'Blanco con Gris', 'Celestes');

INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Onyx', 7, 3.3, 'Va donde hay comida', 'Naranja con marron', 'Amarillentos');

INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Seiko', 2, 3.7, 'Le gusta dormir junto a otros gatos', 'Blanco con Gris', 'Verdosos');

INSERT INTO gatitos (nombre, edad, peso, comportamiento, color, ojos)
VALUES ('Nathan', 7, 4.5, 'Le encanta esconderse', 'Negro', 'Amarillentos');

/* seleccionar info de una tabla */
SELECT * FROM gatitos;

/* modifique la tabla para que por defecto aparezca que no tienen apodo */
ALTER TABLE gatitos
ADD COLUMN apodo VARCHAR(50) DEFAULT 'Ninguno';

/* actualiza un registro con nueva info */
UPDATE gatitos SET apodo = 'Ninguno' WHERE apodo IS NULL;

SELECT * FROM gatitos;

/* agregamos una nueva columna llamada "acompañado" */
ALTER TABLE gatitos
ADD COLUMN acompañado BOOLEAN DEFAULT FALSE;

/* actualizo el valor de la columna "acompañado" a TRUE para el gatito "Rocket" */
UPDATE gatitos SET acompañado = TRUE WHERE nombre = 'Rocket';
UPDATE gatitos SET acompañado = TRUE WHERE nombre = 'Emelia';

/* agregamos una columna para saber los gatitots que estan con dieta */
ALTER TABLE gatitos
ADD COLUMN con_dieta BOOLEAN;

/* actualizo el valor de la columna "con_dieta" a TRUE para saber el gatito que esta con dieta por el peso */
UPDATE gatitos SET con_dieta = TRUE WHERE peso > 4.0;

/* actualizo el valor de la columna "con_dieta" a FOLSE para los gatitos que no necesitan dieta */
UPDATE gatitos SET con_dieta = FALSE WHERE peso <= 4.0 OR peso IS NULL;

SELECT * FROM gatitos;

/* agregamos una columna para los años a jubilrse */
ALTER TABLE gatitos
ADD COLUMN años_para_jubilarse INT;

/* calculamos la edad de los gatitos a jubilarse */
UPDATE gatitos SET años_para_jubilarse = 11 - edad;

SELECT * FROM gatitos;





