##Descripción de la Temática de la Base de Datos

Me salio un proyecto de un ecommerce para el mes que viene, entonces la idea es hacerlo con sql y no Mongo que es lo que uso el dia a dia
La aplicacion web se basa en un ecommerce que te permite rentar obras de arte para producciones, filmaciones de cine, series, eventos etc...

Tiene que tener un sistema que permita rentar las obras seleccionadas si es que estan disponibles, eleguir una fecha de entrega y otra de devolucion, se calcula el costo depende la obra y los dias y el traslado
que se requiera.
Tiene que tener un sistema para registrar usuarios(crud)
Tiene que tener un sistema de notificaciones
Sistema de chat 
Sistema para el administrador donde pueda ver todas las obras de artes y el estado de cada una.
La base de datos para el e-commerce de alquiler de obras de arte gestionará información sobre usuarios, obras de arte, alquileres, pagos, mensajes, preguntas y respuestas, y publicidad. Esta base de datos soportará las operaciones de un e-commerce, incluyendo la gestión de catálogos, transacciones financieras, y la comunicación entre usuarios y administradores.

##Diagramas de Entidad-Relación

El diagrama de entidad-relación.
(no se si esta bien descripto de esta manera pero es lo que se me ocurrio)

    Usuarios: Usuarios registrados en la plataforma.
    Obras de Arte: Información sobre las obras disponibles para alquiler.
    Alquileres: Registro de cada alquiler realizado.
    Pagos: Detalles de los pagos asociados a los alquileres.
    Mensajes: Comunicación entre usuarios y administradores.
    Preguntas y Respuestas: Preguntas frecuentes y respuestas.
    Publicidad: Imágenes y mensajes de publicidad en el sitio web.

1. Tabla usuarios
   Información de los usuarios registrados.
   Campos:

   id_usuario (INT, PK, AI): Identificador único del usuario.
   nombre (VARCHAR(100)): Nombre del usuario.
   email (VARCHAR(100), UNIQUE): Correo electrónico del usuario.
   password (VARCHAR(255)): Contraseña (hash). Encriptada con Bcrypt
   direccion (VARCHAR(255)): Dirección del usuario.
   telefono (VARCHAR(15)): Número de teléfono del usuario.
   fecha_registro (DATETIME): Fecha de registro del usuario.

2. Tabla obras_arte

   Información sobre las obras de arte disponibles para alquiler.
   Campos:

   id_obra (INT, PK, AI): Identificador único de la obra.
   titulo (VARCHAR(255)): Título de la obra. 
   descripcion (TEXT): Descripción de la obra.
   artista (VARCHAR(100)): Artista que creó la obra.
   precio_alquiler (DECIMAL(10,2)): Precio de alquiler por día.
   disponibilidad (BOOLEAN): Disponibilidad para alquiler.
   imagen (VARCHAR(255)): Ruta de la imagen de la obra.

3. Tabla alquileres

   Información sobre los alquileres realizados.
   Campos:

   id_alquiler (INT, PK, AI): Identificador único del alquiler.
   id_usuario (INT, FK): Identificador del usuario que alquila.
   id_obra (INT, FK): Identificador de la obra alquilada.
   fecha_inicio (DATE): Fecha de inicio del alquiler.
   fecha_fin (DATE): Fecha de fin del alquiler.
   estado (VARCHAR(50)): Estado del alquiler (e.g., "activo", "completado").

4. Tabla pagos

   Información sobre los pagos realizados.
   Campos:

   id_pago (INT, PK, AI): Identificador único del pago.
   id_alquiler (INT, FK): Identificador del alquiler asociado.
   monto (DECIMAL(10,2)): Monto del pago.
   fecha_pago (DATETIME): Fecha en que se realizó el pago.
   metodo_pago (VARCHAR(50)): Método de pago utilizado (e.g., tarjeta de crédito).

5. Tabla mensajes

   Comunicación entre usuarios y administradores.
   Campos:

   id_mensaje (INT, PK, AI): Identificador único del mensaje.
   id_remitente (INT, FK): Identificador del remitente (usuario o admin).
   id_destinatario (INT, FK): Identificador del destinatario (usuario o admin).
   mensaje (TEXT): Contenido del mensaje.
   fecha_envio (DATETIME): Fecha en que se envió el mensaje.

6. Tabla preguntas_respuestas

   Preguntas frecuentes y sus respuestas.
   Campos:

   id_pregunta (INT, PK, AI): Identificador único de la pregunta.
   pregunta (TEXT): Texto de la pregunta.
   respuesta (TEXT): Respuesta a la pregunta.
   fecha_creacion (DATETIME): Fecha de creación.

7. Tabla publicidad

   Imágenes y mensajes de publicidad en el sitio web.
   Campos:

   id_publicidad (INT, PK, AI): Identificador único de la publicidad.
   imagen (VARCHAR(255)): Ruta de la imagen.
   mensaje (TEXT): Mensaje de publicidad.
   fecha_inicio (DATE): Fecha de inicio de la publicidad.
   fecha_fin (DATE): Fecha de fin de la publicidad.
