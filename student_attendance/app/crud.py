from database import conexion
from datetime import datetime
from passlib.context import CryptContext


# Función para crear un nuevo registro de acudiente
def registro_acudiente():
    # Establecer la conexión de nuevo 
    coneccion = conexion()  # función de conexión
    Nombre_acu = input("Introduce el nombre del acudiente: ")
    Apellido_acu = input("Introduce el apellido del acudiente: ")
    Genero_acu = input("Introduce el género del acudiente: ")

    # Validamos Id_user_acu
    while True:
        Id_user_acu = input("Introduce el ID del usuario (acudiente) relacionado: ")

        if not Id_user_acu.strip():
            print("Por favor, ingresa un valor.")
            continue

        # Verificamos si el ID proporcionado existe en la tabla usuarios
        cursor = coneccion.cursor()
        query = "SELECT COUNT(*) FROM usuario WHERE Id_user = %s"
        cursor.execute(query, (Id_user_acu,))
        result = cursor.fetchone()

        if result[0] > 0:  # Si el ID existe
            print("Usuario válido.")
            break
        else:
            print("ID de usuario no válido. Por favor, intenta nuevamente.")

    # Loop para confirmar una dirección electrónica válida
    while True:
        Correo_acu = input("Introduce el correo del acudiente: ")

        if "@" in Correo_acu:
            break
        else:
            print("Introduce una dirección de correo electrónico válida.")

    print("Correo electrónico registrado correctamente", Correo_acu)

    Telefono_acu = input("Introduce el teléfono del acudiente: ")
    query = """
    INSERT INTO acudientes (Nombre_acu, Id_user_acu, Apellido_acu, Genero_acu, Correo_acu, Telefono_acu)
    VALUES (%s, %s, %s, %s, %s, %s)
    """

    cursor = coneccion.cursor() 
    # Ejecutamos la consulta con los valores que requerimos
    cursor.execute(query, (Nombre_acu, Id_user_acu, Apellido_acu, Genero_acu, Correo_acu, Telefono_acu))
    coneccion.commit()  # Guardamos los cambios

    print(f"El acudiente: {Nombre_acu} {Apellido_acu} ha sido registrado con éxito")



# Función para crear registro de estudiante
def registro_estudiante():
    coneccion = conexion()

    print("A continuación, los datos que ingresarás serán los pertenecientes al estudiante")

    # Validamos Id_curso2
    # Mostrar los Cursos disponibles
    while True:
        cursor = coneccion.cursor()
        cursor.execute("SELECT Id_curso, Nombre_cur FROM curso;")
        rows = cursor.fetchall()

        print("\nCursos disponibles:")
        for row in rows:
            print(f"ID: {row[0]}, Nombre: {row[1]}")
    

        Id_curso2 = input("Introduce el ID del curso al que pertenece el estudiante: ")
        
    

    # Validar que se haya ingresado un valor
        if not Id_curso2.strip():
            print("Por favor, ingresa un valor.")
            continue

    # Verificar si el ID proporcionado existe en la tabla de cursos
        query = "SELECT COUNT(*) FROM curso WHERE Id_curso = %s"
        cursor.execute(query, (Id_curso2,))
        result = cursor.fetchone()

        if result[0] > 0:
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

        # Verificamos si el ID proporcionado existe en la tabla relacionada
        cursor = coneccion.cursor()
        query = "SELECT COUNT(*) FROM acudientes WHERE Id_acu = %s"
        cursor.execute(query, (Id_acudiente2,))
        result = cursor.fetchone()

        if result[0] > 0:
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

        cursor = coneccion.cursor()
        query = "SELECT COUNT(*) FROM usuario WHERE Id_user = %s"
        cursor.execute(query, (Id_user_estu,))
        result = cursor.fetchone()

        if result[0] > 0:
            print("Usuario válido.")
            break
        else:
            print("ID de usuario no válido. Por favor, intenta nuevamente.")

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

    



def registro_profesor():
    coneccion = conexion()
   
    '''while True:
        Id_user_prof = input("introduceel id de usuario")

        if not Id_user_prof.strip():
            print("Por favor ingresa un valor")
            continue
        
        cursor = coneccion.cursor()
        query = ("SELECT COUNT(*) FROM usuario WHERE Id_user = %s")
        cursor.execute(query, (Id_user_prof))
        result = cursor.fetchone()

        if result[0] > 0:
            print("usuario valido.")
            break
        else: 
            print("usuario invalido, ingresa un valor valido")'''
    while True:
        Id_user_profesores = input("Introduce el ID del usuario (docente) relacionado: ")

        if not Id_user_profesores.strip():
            print("Por favor, ingresa un valor.")
            continue

        # Verificamos si el ID proporcionado existe en la tabla usuarios
        cursor = coneccion.cursor()
        query = "SELECT COUNT(*) FROM usuario WHERE Id_user = %s"
        cursor.execute(query, (Id_user_profesores,))
        result = cursor.fetchone()

        if result[0] > 0:  # Si el ID existe
            print("Usuario válido.")
            break
        else:
            print("ID de usuario no válido. Por favor, intenta nuevamente.")

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
    INSERT INTO profesores (id_usuario, fecha_contratacion, asignatura)
    VALUES (%s, %s, %s)
'''
    cursor = coneccion.cursor()
    cursor.execute(query,(Id_user_profesores, Fecha_contratacion, asignatura_prof))
    coneccion.commit()

    print(f"El docente ha sido registrado con éxito")



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

        # Mostrar registros mejorado
        print("\n📅 Registros de Asistencia:")
        headers = ["ID", "Fecha", "Estudiante", "Curso", "Estado Actual"]
        for i, asistencia in enumerate(asistencias, 1):
            print(f"""
[{i}] {headers[0]}: {asistencia[0]}
     {headers[1]}: {asistencia[2]}
     {headers[2]}: {asistencia[5]}
     {headers[3]}: {asistencia[7]}
     {headers[4]}: {asistencia[3]}""")
            print("-" * 60)

        # Validación de selección
        while True:
            try:
                seleccion = int(input("\n👉 Seleccione el registro a modificar (0 para cancelar): ")) - 1
                if seleccion == -1:
                    print("🚫 Operación cancelada")
                    return
                if 0 <= seleccion < len(asistencias):
                    break
                print("❌ Selección inválida, intente nuevamente")
            except ValueError:
                print("❌ Ingrese un número válido")

        registro = asistencias[seleccion]
        id_asistencia = registro[0]
        id_estudiante = registro[4]
        id_curso = registro[6]

        # Lógica de estados mejorada
        estados = ['Asistió', 'Ausente', 'Tardanza']  # Ejemplo, ajustar según ENUM real
        print("\n🔄 Estados disponibles:")
        for i, estado in enumerate(estados, 1):
            print(f"{i}. {estado}")

        # Validación de estado
        while True:
            try:
                nuevo_estado_idx = int(input("👉 Seleccione el nuevo estado: ")) - 1
                if 0 <= nuevo_estado_idx < len(estados):
                    nuevo_estado = estados[nuevo_estado_idx]
                    break
                print("❌ Selección inválida")
            except ValueError:
                print("❌ Ingrese un número válido")

        # Confirmación para ausencia
        if nuevo_estado == "Ausente":
            confirmacion = input("\n⚠️ ¿ESTÁ SEGURO? Esto generará un registro de inasistencia (S/N): ").upper()
            if confirmacion != 'S':
                print("🚫 Acción cancelada")
                coneccion.rollback()
                return

        # Transacción completa
        cursor.execute("""
            UPDATE asistencias 
            SET Estado_Asis = %s 
            WHERE Id_Asis = %s
        """, (nuevo_estado, id_asistencia))

        if nuevo_estado == "Ausente":
            # Lógica de inasistencia mejorada
            print("\n📝 Registro de Inasistencia")
            motivo = input("Motivo (máx 100 caracteres): ")[:100]
            
            # Menú de incapacidad
            incapacidades = [
                'Incapacidad Psicológica',
                'Incapacidad Médica', 
                'Permiso',
                'Ninguna'
            ]
            
            print("\n🏥 Tipo de justificación:")
            for i, opcion in enumerate(incapacidades, 1):
                print(f"{i}. {opcion}")
            
            while True:
                opcion = input("👉 Seleccione (1-4): ")
                if opcion in ['1', '2', '3', '4']:
                    incapacidad = incapacidades[int(opcion)-1] if opcion != '4' else ''
                    break
                print("❌ Opción inválida")

            # Cálculo preciso de días acumulados
            cursor.execute("""
                SELECT COUNT(*) 
                FROM asistencias 
                WHERE Id_estud4 = %s 
                AND Estado_Asis = 'Ausente'
                AND Id_Asis <= %s
            """, (id_estudiante, id_asistencia))
            dias_acumulados = cursor.fetchone()[0]

            # Inserción segura
            cursor.execute("""
                INSERT INTO inasistencias (
                    Id_estud,
                    Motivo_inasistencia,
                    Dias_inasistencia,
                    Incapacidad_ina,
                    id_curso3,
                    fecha_ina
                ) VALUES (%s, %s, %s, %s, %s, CURDATE())
            """, (
                id_estudiante,
                motivo,
                dias_acumulados,
                incapacidad if incapacidad != 'Ninguna' else '',
                id_curso
            ))

            print(f"📌 Inasistencia registrada (#{dias_acumulados})")

        coneccion.commit()
        print("\n✅ Estado actualizado exitosamente")
        
    except Exception as e:
        coneccion.rollback()
        print(f"\n❌ Error: {str(e)}")
        coneccion.close

#configuracion del contexto de hashing usando bycryp como esquema 
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

from database import conexion
from passlib.context import CryptContext
import getpass  # Para manejar la entrada de contraseñas de manera segura

# Configuración del contexto de hashing usando bcrypt como esquema
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

def register_user(username, password):
    
    coneccion = conexion()
    cursor = coneccion.cursor()

    # Verifica si el usuario ya existe
    cursor.execute("SELECT * FROM usuario WHERE Nombre_user = %s", (username,))
    if cursor.fetchone():
        return {"error": "El usuario ya existe"}

    # Hashea la contraseña
    hashed_password = pwd_context.hash(password)

    # Inserta el nuevo usuario
    cursor.execute("INSERT INTO usuario (username, Contraseña_user) VALUES (%s, %s)", 
                   (username, hashed_password))

    coneccion.commit()
    cursor.close()
    coneccion.close()
    return {"message": "Usuario registrado exitosamente"}

def login_user(Correo, password):
    conn = conexion()
    cursor = conn.cursor(dictionary=True, buffered=True)  # Usar cursor buffered

    try:
        # Busca al usuario en la base de datos
        cursor.execute("SELECT * FROM usuario WHERE Correo_user = %s", (Correo,))
        user = cursor.fetchone()  # Lee el resultado

        if user is None:
            return {"error": "El usuario no existe"}

        # Verifica si la contraseña es correcta
        if user["Contraseña_user"].startswith("$2b$"):  # Verifica si es un hash bcrypt
            if pwd_context.verify(password, user["Contraseña_user"]):
                return {"message": "Login exitoso"}
            else:
                return {"error": "Credenciales incorrectas"}
        else:
            # Si no es un hash bcrypt, compara en texto plano
            if password == user["Contraseña_user"]:
                # Migra la contraseña a bcrypt
                hashed_password = pwd_context.hash(password)
                cursor.execute("UPDATE usuario SET Contraseña_user = %s WHERE Correo_user = %s", 
                               (hashed_password, Correo))
                conn.commit()
                return {"message": "Login exitoso. Contraseña migrada a bcrypt."}
            else:
                return {"error": "Credenciales incorrectas"}
    except KeyError:
        return {"error": "Error en la estructura de la base de datos"}
    except Exception as e:
        return {"error": f"Error inesperado: {e}"}
    finally:
        # Cierra el cursor y la conexión
        cursor.close()
        conn.close()
def main():
    """
    Función principal para interactuar con el usuario desde la terminal.
    """
    print("Bienvenido al sistema de autenticación.")
    while True:
        print("\nOpciones:")
        print("1. Registrar usuario")
        print("2. Iniciar sesión")
        print("3. Salir")
        option = input("Selecciona una opción: ")

        if option == "1":
            username = input("Ingresa tu correo de usuario: ")
            password = getpass.getpass("Ingresa una contraseña: ")  # Oculta la contraseña
            result = register_user(username, password)
            print(result.get("message", result.get("error")))

        elif option == "2":
            username = input("Ingresa tu Correo de usuario: ")
            password = getpass.getpass("Ingresa tu contraseña: ")  # Oculta la contraseña
            result = login_user(username, password)
            print(result.get("message", result.get("error")))

        elif option == "3":
            print("Saliendo del sistema...")
            break

        else:
            print("Opción no válida. Intenta de nuevo.")

'''if __name__ == "__main__":
    main()'''

#registro_estudiante()    
#registro_acudiente()
#registro_profesor()
#cambiar_estado_asistencia()
#registro_asistencia_estud()



# Cerramos el cursor y la conexión
