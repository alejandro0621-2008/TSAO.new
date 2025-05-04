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









## Registro de estudiante


empezamos con lo siguiente




def registro_estudiante():
    coneccion = conexion()
    cursor = coneccion.cursor()

    print("A continuación, los datos que ingresarás serán los pertenecientes al estudiante")

    # Validamos Id_curso2
    while True:
        cursor.execute("SELECT Id_curso, Nombre_cur FROM curso;")
        rows = cursor.fetchall()

        print("\nCursos disponibles:")
        for row in rows:
            print(f"ID: {row[0]}, Nombre: {row[1]}")

        Id_curso2 = input("Introduce el ID del curso al que pertenece el estudiante: ")

        if not Id_curso2.strip():
            print("Por favor, ingresa un valor.")
            continue

        # Verificar si el curso existe
        cursor.execute("SELECT COUNT(*) FROM curso WHERE Id_curso = %s", (Id_curso2,))
        if cursor.fetchone()[0] > 0:
            print("Curso válido.")
            break
        else:
            print("ID del curso no válido. Por favor, intenta nuevamente.")

    # Validamos Id_acudiente2
    while True:
        Id_acudiente2 = input("Introduce el ID del acudiente del estudiante: ")

        if not Id_acudiente2.strip():
            print("Por favor, ingresa un valor.")
            continue

        cursor.execute("SELECT COUNT(*) FROM acudientes WHERE Id_acu = %s", (Id_acudiente2,))
        if cursor.fetchone()[0] > 0:
            print("Acudiente válido.")
            break
        else:
            print("ID de acudiente no válido. Por favor, intenta nuevamente.")

    # Validamos Id_user_estu
    while True:
        Id_user_estu = input("Introduce el usuario del estudiante: ")

        if not Id_user_estu.strip():
            print("Por favor, ingresa un valor.")
            continue
        
        # Verificamos existencia en usuarios
        """cursor.execute("SELECT Id_user FROM usuario WHERE Id_user = %s", (Id_user_estu,))
        if not cursor.fetchone():
            print("Error: El usuario no existe.")
            continue"""

        "verificamos el rol y si ya esta registrado en estudiantes"
        cursor.execute("""
        SELECT Id_rol2 FROM usuario WHERE Id_user = %s """, (Id_user_estu,))

        resultado = cursor.fetchone()
        
        if resultado: 
             id_rol = resultado[0]

         # Asegurar que el usuario NO sea Admin (1), Profesor (2) o Acudiente (4)
             if id_rol in [1, 2, 4]:  # Roles que NO pueden ser estudiantes
                print("Error: El usuario es Admin, Profesor o Acudiente. Use otro ID.")
                continue
        
        else:
            print("ID de usuario no existe. Intente de nuevo.")
            continue
        # Si el rol es 2 (estudiante), verificar si ya está registrado en estudiantes
        cursor.execute("SELECT Id_user_estu FROM estudiantes WHERE Id_user_estu = %s", (Id_user_estu,))
        if cursor.fetchone():
            print("Error: Este usuario ya está registrado como estudiante.")
            continue
        print("Usuario válido para registrar como estudiante.")
        break


          
    Nombre_estud = input("Introduce el nombre del estudiante: ")
    Apellido_estud = input("Introduce el apellido del estudiante: ")

    # Convertir la entrada de texto a un objeto datetime.date
    while True:
        FechaDNaci_estud = input("Introduce la fecha de nacimiento (YYYY-MM-DD): ")
        try:
            fecha_nacimiento = datetime.strptime(FechaDNaci_estud, "%Y-%m-%d").date()
            print(f"Fecha de nacimiento: {fecha_nacimiento}")
            break
        except ValueError:
            print("Formato de fecha incorrecto. Por favor, usa el formato YYYY-MM-DD.")

    Genero_estud = input("Introduce el género del estudiante: ")
    Telefono_estud = input("Introduce el teléfono del estudiante: ")

    while True:
        Correo_estud = input("Introduce el correo del estudiante: ")

        if "@" in Correo_estud:
            break
        else:
            print("Introduce una dirección de correo electrónico válida.")

    print("Correo electrónico registrado correctamente", Correo_estud)

    query = """
    INSERT INTO estudiantes (Id_curso2, Id_acudiente2, Id_user_estu, Nombre_estud, Apellido_estud, FechaDNaci_estud, Genero_estud, Telefono_estud, Correo_estud)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
    """
    cursor = coneccion.cursor()
    cursor.execute(query, (Id_curso2, Id_acudiente2, Id_user_estu, Nombre_estud.title(), Apellido_estud.title(), FechaDNaci_estud, Genero_estud.capitalize(), Telefono_estud, Correo_estud))
    coneccion.commit()  # Hacemos commit para guardar los cambios

    print(f"El estudiante: {Nombre_estud} {Apellido_estud} ha sido registrado con éxito")





## Registro Profesores


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







