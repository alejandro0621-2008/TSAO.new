import mysql.connector
from datetime import datetime

# Configuración de conexión
def conexion():
    try:
        return mysql.connector.connect(
            host="localhost",
            database="TSAO",
            user="root",
            password=""
        )
    except mysql.connector.Error as err:
        print(f"Error al conectar: {err}")
        return None  # Retorna None si la conexión falla

# Validamos la conexión
try:
    conexion_db = conexion()  # Llamada a la función para obtener la conexión

    if conexion_db and conexion_db.is_connected():
        print("✅ Conexión exitosa")

        # Objeto que permite interactuar con la base de datos
        cursor = conexion_db.cursor()

        # Realizamos la consulta
        cursor.execute("SELECT * FROM estudiantes")
        rows = cursor.fetchall()

        for row in rows:
            print(row)  # Imprime cada fila de la tabla 'estudiantes'

        cursor.close()
    else:
        print("❌ Conexión fallida")

except mysql.connector.Error as err:
    print(f"⚠️ Error: {err}")

finally:
    if conexion_db and conexion_db.is_connected():
        conexion_db.close()
        print("🔒 Conexión cerrada")
