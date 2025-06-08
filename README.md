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
✅ Base de datos (MySQL, PostgreSQL, MongoDB, Firebase, etc.).
✅ Dependencias del proyecto (Express, React, Django, etc.).


##### 2. Instalación de Dependencias

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



##### 3. Configurar Variables de Entorno

Muchas aplicaciones usan variables de entorno para configuraciones como la conexión a la base de datos o APIs externas.

Si el proyecto tiene un archivo .env.example, duplícalo y renómbralo a .env:

cp .env.example .env

Luego, edita el archivo .env y agrega las configuraciones necesarias (puerto del servidor, claves API, credenciales de la base de datos, etc.).


##### 4. Iniciar la Base de Datos (Si es Necesario)

Si la aplicación usa una base de datos como MySQL o PostgreSQL, debes iniciarla:

Para MySQL:

mysql -u usuario -p
CREATE DATABASE nombre_de_la_base;


Si usas Firebase, solo necesitas configurar la clave API en el .env.

⸻

##### 5. Iniciar el Backend

Si el backend está en Node.js (Express, NestJS, etc.):

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
3. Revisar la base de datos y asegurarte de que está funcionando correctamente.


##### 8. Desplegar en Producción (Opcional)

Cuando el sistema esté listo, puedes desplegarlo en la nube:
• Frontend: Vercel, Netlify, Firebase Hosting.
• Backend: Heroku, AWS, DigitalOcean.
• Base de Datos: MongoDB Atlas, Supabase, PostgreSQL en la nube.








## Funcionalidades Basicas

<p> Registro de un acudiente:


![Registro acudiente 1](https://github.com/user-attachments/assets/73b9e5fe-0892-4a25-b29b-60d497b15f08)




Este fragmento de codigo define una funciona llamada REGISTRO DE ACUDIENTE esta misma funcion crea una conexion a la base de datos, esta pide 3 datos los cuales quedan almacenados en las variables Nombre del acudiente, apellido y genero



![image](https://github.com/user-attachments/assets/f5b72948-eb5d-477c-bff7-21a01eb97012)




Este fragmento de Python está pensado para pedirte el ID de un usuario (estudiante) y verificar en la base de datos que ese usuario no tenga uno de los roles prohibidos (Admin, Profesor o Estudiante)




![RA2 ](https://github.com/user-attachments/assets/bd0ece36-5dfc-4e52-b755-24321a199c04)



Pide y valida un ID de usuario existente que no sea Admin/Profesor/Estudiante y no esté duplicado en la tabla de acudientes, valida que el correo tenga formato mínimo (@), recoge datos adicionales (teléfono), inserta un nuevo registro en la tabla acudientes y confirma al usuario que todo salió bien.










## Registro de estudiante


![RE1 ](https://github.com/user-attachments/assets/b7b52b66-ac40-46f8-95fe-638fb9dd82d1)





Este código muestra al usuario los cursos disponibles, le pide el ID del curso al que pertenecerá el estudiante, valida que no deje el campo vacío, y comprueba en la base de datos que ese ID exista. Sólo cuando el ID es correcto abandona el bucle, dejando Id_curso2 listo para usarse en la inserción del nuevo registro de estudiante.





![RA2 ](https://github.com/user-attachments/assets/5a1bd93a-ed21-490c-a97d-4271dff956b9)




Antes de insertar un estudiante nuevo se asegura de que, El acudiente al que asociarás al estudiante exista en la tabla acudientes, el usuario que será el estudiante esté registrado en la tabla usuario y tenga un rol válido (luego comprobarías que efectivamente sea rol “estudiante” y que no esté duplicado).






![RE3](https://github.com/user-attachments/assets/4179477f-ba66-455a-aac6-73315baa2924)




Verifica que el usuario sea un estudiante válido y no esté duplicado, Recopila nombre, apellido, fecha de nacimiento (con formato estricto), género, teléfono y correo (con @), Inserta el nuevo estudiante en la tabla estudiantes de la base de datos y hace commit, informa por consola que el registro fue exitoso.








## Registro Profesores







![RP1](https://github.com/user-attachments/assets/ea3e2dea-1b6e-4468-b0b0-563716f3cc6b)






ste fragmento es el inicio de la función registro_profesor(), y su objetivo principal es pedir y validar el ID de usuario que se va a registrar como docente






![RP2](https://github.com/user-attachments/assets/186b860e-6d21-4a71-8701-e5f81a14c104)





Valida que el ID corresponda a un usuario con rol “Profesor” (descartando Admin, Estudiante y Acudiente) y que no esté duplicado, recoge nombre, apellido, fecha de contratación (formato estricto) y asignatura, inserta el nuevo registro en la tabla profesores y confirma la operación.












## Registro asistencia











![RAS1](https://github.com/user-attachments/assets/fce00d09-eadd-46f6-bb93-556045d1af75)





esta función lista los cursos disponibles, deja que el usuario elija uno, recupera todos los estudiantes matriculados en ese curso, muestra sus datos completos, preparados para que a continuación puedas registrarles la asistencia.










![RAS2](https://github.com/user-attachments/assets/6cb8bfca-d91c-4637-bac5-6d6a46526b8f)





sirve para registrar una entrada de asistencia de un estudiante en una base de datos.












## Cambiar estado de asistencia









