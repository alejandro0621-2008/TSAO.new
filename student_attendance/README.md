#Lista de asistencia-TSAO

####Descripcion de nuestro proyecto:
<P>
Nuestro proyecto busca que el llamado asistencia convencional o tradicional se cambie por un sistema de llamado virtual el cual proporcione comodidades tanto como para el docente como para el estudiante y que con este se eviten los incovenientes como perder tiempo en los llamados a asistencia 
</P>

##Requisitos Previos
En este apartado se encuentran las tecnologias o herramientas necesarias para ejecutar el proyecto

#### Plataformas para el backend:
- Phyton
- HTML
- MySQL
- PHP MY ADMIN

####Plataformas para el frontend:
- flet


##Instrucciones de instalacion:

1. Clonar el repositorio mediante el siguiente comando

   #####git clone https://github.com/usuario/repo.git cd repo 


2. Instalar dependencias

En este caso nuestro proyecto esta en python por lo tanto las dependecias se encuentran en un archivo "requerirments.txt" y se utiliza el siguiente comando

    #####pip install -r requirementes.txt


3. Configurar variables de entorno( si es necesario)

Algunos proyectos requieren un archivo  .env. Puedes crearlo copiando el archvio de ejemplo si existe

    #####cp .env. example .env



4. Probar que las dependencias funcionan

Para verificar que todo esta instalado correctamente, intenta ejecutar el proyecto, en este caso para Python esta el siguiente codigo

    #####python app.py






##Uso del proyecto

Para ejecutar la aplicación o el sistema, debes seguir un proceso estructurado dependiendo de si estás en un entorno de desarrollo o producción. A continuación, te explico paso a paso cómo hacerlo:

⸻

1. Verificar los Requisitos Previos

Antes de ejecutar el sistema, asegúrate de que tienes instalado lo siguiente:
✅ Node.js y npm/yarn (para frontend y backend en JavaScript).
✅ Base de datos (MySQL, PostgreSQL, MongoDB, Firebase, etc.).
✅ Dependencias del proyecto (Express, React, Django, etc.).

⸻

2. Instalación de Dependencias

Ejecuta estos comandos en el directorio del proyecto para instalar las dependencias necesarias.

Para el Backend (Ejemplo: Node.js con Express)

    cd backend
     npm install

Si usas Python (Django, Flask, FastAPI):

    cd backend
    pip install -r requirements.txt

Para el Frontend (Ejemplo: React o Vue.js)

    cd frontend
    npm install



⸻

3. Configurar Variables de Entorno

Muchas aplicaciones usan variables de entorno para configuraciones como la conexión a la base de datos o APIs externas.

Si el proyecto tiene un archivo .env.example, duplícalo y renómbralo a .env:

    cp .env.example .env

Luego, edita el archivo .env y agrega las configuraciones necesarias (puerto del servidor, claves API, credenciales de la base de datos, etc.).

⸻

4. Iniciar la Base de Datos (Si es Necesario)

Si la aplicación usa una base de datos como MySQL o PostgreSQL, debes iniciarla:

Para MySQL:

    mysql -u usuario -p
    CREATE DATABASE nombre_de_la_base;


Si usas Firebase, solo necesitas configurar la clave API en el .env.

⸻

5. Iniciar el Backend

Si el backend está en Node.js (Express, NestJS, etc.):

     cd backend
    npm start


El backend debería ejecutarse en http://localhost:5000/ (o el puerto que hayas configurado).

⸻

6. Iniciar el Frontend

Para React, Vue o Angular, ejecuta:

    cd frontend
    npm start

Esto abrirá el frontend en http://localhost:3000/ (o el puerto configurado).

⸻

7. Pruebas y Validación
	1.	Abrir el navegador y visitar http://localhost:3000/ para ver la interfaz del frontend.
	2.	Probar la conexión con el backend revisando la consola del navegador o usando herramientas como Postman para hacer peticiones a http://localhost:5000/api/....
	3.	Revisar la base de datos y asegurarte de que está funcionando correctamente.

⸻

8. Desplegar en Producción (Opcional)

Cuando el sistema esté listo, puedes desplegarlo en la nube:
	•	Frontend: Vercel, Netlify, Firebase Hosting.
	•	Backend: Heroku, AWS, DigitalOcean.
	•	Base de Datos: MongoDB Atlas, Supabase, PostgreSQL en la nube.





