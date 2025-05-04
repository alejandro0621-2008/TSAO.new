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

1. Clonar el repositorio mediante el siguiente comando

#####git clone https://github.com/usuario/repo.git cd repo


2. Instalar dependencias

En este caso nuestro proyecto esta en python por lo tanto las dependecias se encuentran en un archivo "requerirments.txt" y se utiliza el siguiente comando

#### #pip install -r requirementes.txt


3. Configurar variables de entorno( si es necesario)

Algunos proyectos requieren un archivo .env. Puedes crearlo copiando el archvio de ejemplo si existe

##### cp .env. example .env



4. Probar que las dependencias funcionan

Para verificar que todo esta instalado correctamente, intenta ejecutar el proyecto, en este caso para Python esta el siguiente codigo

#####python app.py






## Uso del proyecto

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
1. Abrir el navegador y visitar http://localhost:3000/ para ver la interfaz del frontend.
2. Probar la conexión con el backend revisando la consola del navegador o usando herramientas como Postman para hacer peticiones a http://localhost:5000/api/....
3. Revisar la base de datos y asegurarte de que está funcionando correctamente.

⸻

8. Desplegar en Producción (Opcional)

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









def registro_profesor():
    coneccion = conexion()
   
    while True:
        
        Id_user_profesores = input("Introduce el ID del usuario (docente) relacionado: ")
       
        if not Id_user_profesores.strip():
            print("Por favor, ingresa un valor.")
            continue
        
        cursor = coneccion.cursor()
 
        # Verificar si el usuario ya está registrado como profesor
        cursor.execute("""
        SELECT Id_rol2 FROM usuario WHERE Id_user = %s """, (Id_user_profesores,))

        resultado = cursor.fetchone()
        if resultado:
            id_rol = resultado[0]

            # Asegurar que el usuario NO sea Admin (1), Acudiente (4) o Estudiante (3)
            if id_rol in [1, 3, 4]:  # Roles que NO pueden ser estudiantes
                print("Error: El usuario es Admin, Acudiente o Estudiante. Use otro ID.")
                continue

        else:
            print("ID de usuario no existe. Intente de nuevo.")
            continue

        # verificar si el id ya está registrado en profesores
        cursor.execute("SELECT id_usuario FROM profesores WHERE id_usuario = %s", (Id_user_profesores,))
        if cursor.fetchone():
            print("Error: Este usuario ya está registrado como profesor.")
            continue
        print("Usuario válido para registrar como profesor.")
        break
        
    Nombre_profesor = input("Introduce el Nombre del (docente): ")
    Apellido_profesor = input("Introduce el Apellido del (docente): ")
    while True:
        Fecha_contratacion = input("Introduce la fecha de contratacion del docente YYYY-MM-DD): ")
        try:
            Fecha_contrato = datetime.strptime(Fecha_contratacion, "%Y-%m-%d").date()
            print(f"Fecha de nacimiento: {Fecha_contrato}")
            break
        except ValueError:
            print("Formato de fecha incorrecto. Por favor, usa el formato YYYY-MM-DD.")

    asignatura_prof = input("Ingresa la asignatura que da: ")

    query = '''
    INSERT INTO profesores (id_usuario, nombre_pro,	apellido_pro, fecha_contratacion, asignatura)
    VALUES (%s, %s, %s,%s, %s)
'''
       cursor = coneccion.cursor()
    cursor.execute(query,(Id_user_profesores, Nombre_profesor, Apellido_profesor,         Fecha_contratacion, asignatura_prof))
    coneccion.commit()

    print(f"El docente ha sido registrado con éxito")




## Registro asistencia


def registro_asistencia_estud(): 
    coneccion = conexion()
    cursor = coneccion.cursor()
   
   # Obtener y mostrar cursos
    cursor.execute("SELECT Id_curso, Nombre_cur, Grado FROM curso")
    cursos = cursor.fetchall()

    if not cursos:
        print("⚠️ No hay cursos registrados.")
        return

    print("\n📚 Lista de Cursos:")
    for i, curso in enumerate(cursos, 1):
        print(f"[{i}] ID: {curso[0]} - {curso[1]} ({curso[2]})")

    # Selección de curso
    try:
        seleccion = int(input("\n👉 Seleccione el número del curso: ")) - 1
        id_curso = cursos[seleccion][0]
    except (ValueError, IndexError):
        print("❌ Selección inválida")
        return

    # Obtener estudiantes del curso
    cursor.execute("""
        SELECT Id_estud, Id_curso2, Id_acudiente2, Id_user_estu, 
                Nombre_estud, Apellido_estud, FechaDNaci_estud, 
                Genero_estud, Telefono_estud, Correo_estud 
        FROM estudiantes 
        WHERE Id_curso2 = %s
        """, (id_curso,))
        
    estudiantes = cursor.fetchall()

    if not estudiantes:
        print("\n⚠️ No hay estudiantes en este curso.")
        return

    # Mostrar todos los estudiantes
    print(f"\n🎓 Estudiantes del curso {cursos[seleccion][1]}:")
    for j, est in enumerate(estudiantes, 1):
        print(f"""
[{j}] ID Estudiante: {est[0]}
     Curso: {est[1]}
     Acudiente: {est[2]}
     Usuario: {est[3]}
     Nombre: {est[4]} {est[5]}
     Nacimiento: {est[6]}
     Género: {est[7]}
     Teléfono: {est[8]}
     Email: {est[9]}
            """)
        print("-" * 50)  # Separador entre estudiantes

# Selección de estudiante
    try:
        seleccion_est = int(input("\n👉 Seleccione el número del estudiante: ")) - 1
        id_estudiante = estudiantes[seleccion_est][0]
        nombre_estudiante = f"{estudiantes[seleccion_est][1]} {estudiantes[seleccion_est][2]}"
        
    except (ValueError, IndexError):
        print("❌ Selección inválida")
        return

    # Obtener valores ENUM para Estado_Asis
    cursor.execute("""
        SELECT COLUMN_TYPE 
        FROM INFORMATION_SCHEMA.COLUMNS 
        WHERE TABLE_NAME = 'asistencias' 
        AND COLUMN_NAME = 'Estado_Asis'
    """)
    enum_values = cursor.fetchone()[0]
    estados = [valor.strip("'") for valor in enum_values.replace("enum(", "").replace(")", "").split(",")]

    # Capturar datos de asistencia
    nombre_asistencia = input("\n📝 Ingrese el nombre para la asistencia: ")
        
    print("\n🔄 Estado de asistencia:")
    for i, estado in enumerate(estados, 1):
        print(f"{i}. {estado}")
        
    try:
        seleccion_estado = int(input("👉 Seleccione el estado: ")) - 1
        estado_seleccionado = estados[seleccion_estado]
    except (ValueError, IndexError):
        print("❌ Selección inválida")
        return

    # Generar fecha y hora automáticas
    now = datetime.now()
    fecha_asis = now.strftime("%Y-%m-%d")
    hora_entrada = now.strftime("%H:%M:%S")

    # Insertar en la tabla asistencias
    insert_query = """
        INSERT INTO asistencias (
            Nombre_Asis, 
            Fecha_Asis, 
            Hora_Entrada, 
            Estado_Asis, 
            Id_estud4, 
            Curso2
        ) VALUES (%s, %s, %s, %s, %s, %s)
    """

    valores = (
        nombre_asistencia,
        fecha_asis,
        hora_entrada,
        estado_seleccionado,
        id_estudiante,
        id_curso
    )

    cursor.execute(insert_query, valores)
    coneccion.commit()
    print(f"\n✅ Asistencia registrada exitosamente para {nombre_estudiante}")
    print(f"📅 Fecha: {fecha_asis} | ⏰ Hora entrada: {hora_entrada}")
    print(f"🏷️ Nombre: {nombre_asistencia} | 🟢 Estado: {estado_seleccionado}")







## Cambiar estado de asistencia



def cambiar_estado_asistencia():
    coneccion = conexion()
    cursor = coneccion.cursor()

    try:
        # Consulta optimizada con alias claros
        cursor.execute("""
            SELECT 
                a.Id_Asis AS id_asistencia,
                a.Nombre_Asis AS nombre_asistencia,
                a.Fecha_Asis AS fecha,
                a.Estado_Asis AS estado,
                e.Id_estud AS id_estudiante,
                CONCAT(e.Nombre_estud, ' ', e.Apellido_estud) AS estudiante,
                c.Id_curso AS id_curso,
                c.Nombre_cur AS curso
            FROM asistencias a
            INNER JOIN estudiantes e ON a.Id_estud4 = e.Id_estud
            INNER JOIN curso c ON a.Curso2 = c.Id_curso
            ORDER BY a.Fecha_Asis DESC
        """)
        asistencias = cursor.fetchall()

        if not asistencias:
            print("⚠️ No hay registros de asistencia")
            return







