
CREATE DATABASE IF NOT EXISTS e_commerce_arte;
USE e_commerce_arte;


CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS obras_arte (
    id_obra INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    artista VARCHAR(100),
    precio_alquiler DECIMAL(10,2) NOT NULL,
    disponibilidad BOOLEAN DEFAULT TRUE,
    imagen VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS alquileres (
    id_alquiler INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_obra INT,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    estado VARCHAR(50) DEFAULT 'activo',
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_obra) REFERENCES obras_arte(id_obra)
);


CREATE TABLE IF NOT EXISTS pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_alquiler INT,
    monto DECIMAL(10,2) NOT NULL,
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    metodo_pago VARCHAR(50),
    FOREIGN KEY (id_alquiler) REFERENCES alquileres(id_alquiler)
);

CREATE TABLE IF NOT EXISTS mensajes (
    id_mensaje INT AUTO_INCREMENT PRIMARY KEY,
    id_remitente INT,
    id_destinatario INT,
    mensaje TEXT NOT NULL,
    fecha_envio DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remitente) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_destinatario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE IF NOT EXISTS preguntas_respuestas (
    id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
    pregunta TEXT NOT NULL,
    respuesta TEXT NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS publicidad (
    id_publicidad INT AUTO_INCREMENT PRIMARY KEY,
    imagen VARCHAR(255),
    mensaje TEXT,
    fecha_inicio DATE,
    fecha_fin DATE
);
