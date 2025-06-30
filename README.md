# Lista de asistencia-TSAO

#### Descripcion de nuestro proyecto:
<P>
Nuestro proyecto busca que el llamado asistencia convencional o tradicional se cambie por un sistema de llamado virtual el cual proporcione comodidades tanto como para el docente como para el estudiante y que con este se eviten los incovenientes como perder tiempo en los llamados a asistencia
</P>

## Requisitos Previos
En este apartado se encuentran las tecnologias o herramientas necesarias para ejecutar el proyecto

#### Plataformas para el backend:
- Phyton
- HTML
- MySQL
- PHP MY ADMIN

#### Plataformas para el frontend:
- flet


## Instrucciones de instalacion:

##### 1. Copiamos el enlace del repositorio en github y clonamos el repositorio mediante el siguiente comando

##### git clone https://github.com/alejandro0621-2008/TSAO.new.git cd repo


![Clonar 1](https://github.com/user-attachments/assets/d9e39bd1-192f-44ff-bfdb-96937e8a8441)


##### Luego en nuestra terminal colocamos el comando con el enlace del repositorio que queremos clonar

![Clonar2](https://github.com/user-attachments/assets/1bb6be64-d271-4d68-af98-d19dc8ce6759)




##### 2. Instalar dependencias

En este caso nuestro proyecto esta en python por lo tanto las dependecias se encuentran en un archivo "requerirments.txt" y se utiliza el siguiente comando

##### pip install -r requirementes.txt



![requerimientos](https://github.com/user-attachments/assets/030380e7-8c27-4e83-9016-d74c9cf4602f)



##### 3. Configurar entorno virtual

Nuestro proyecto requiere un archivo de entorno virtaul a continuacipn el comando de como hacerlo

##### pip install virtualenv


![virtualenv](https://github.com/user-attachments/assets/899a087d-d28c-4444-b227-531bbf67f343)




##### 4. Probar que las dependencias funcionan

Para verificar que todo esta instalado correctamente, intenta ejecutar el proyecto, en este caso para Python esta el siguiente codigo

#####python app.py






## Uso del proyecto

Para ejecutar la aplicación o el sistema, debes seguir un proceso estructurado dependiendo de si estás en un entorno de desarrollo o producción. A continuación, te explico paso a paso cómo hacerlo:


##### 1. Verificar los Requisitos Previos

Antes de ejecutar el sistema, asegúrate de que tienes instalado lo siguiente:
✅ Node.js y npm/yarn (para frontend y backend en JavaScript).
✅ Base de datos (MySQL, PostgreSQL,)


##### 2. Instalación de Dependencias

Ejecuta estos comandos en el directorio del proyecto para instalar las dependencias necesarias.

Para el Backend:

cd backend
npm install

Si usas Python:


cd backend
pip install -r requirements.txt

Para el Frontend:

cd frontend
npm install



##### 3. Configurar Variables de Entorno


Nuestro proyecto tiene un archivo .env.example, duplícalo y renómbralo a .env:

cp .env.example .env

Luego, edita el archivo .env y agrega las configuraciones necesarias (puerto del servidor, claves API, credenciales de la base de datos, etc.).


##### 4. Iniciar la Base de Datos (Si es Necesario)

Si la aplicación usa una base de datos como MySQL o PostgreSQL, debes iniciarla:

Para MySQL:

mysql -u usuario -p
CREATE DATABASE nombre_de_la_base;




⸻

##### 5. Iniciar el Backend

Si el backend está en Node.js

cd backend
npm start


El backend debería ejecutarse en http://localhost:5000/ (o el puerto que hayas configurado).

⸻

##### 6. Iniciar el Frontend

Para React, Vue o Angular, ejecuta:

cd frontend
npm start

Esto abrirá el frontend en http://localhost:3000/ (o el puerto configurado).



7. Pruebas y Validación
1. Abrir el navegador y visitar http://localhost:3000/ para ver la interfaz del frontend.
2. Probar la conexión con el backend revisando la consola del navegador o usando herramientas como Postman para hacer peticiones a http://localhost:5000/api/....
3. Revisar la base de datos y asegurarte 













## Funciones principales de nuestra aplicacion

https://github.com/alejandro0621-2008/TSAO.new/blob/main/Funciones%20principales.md








