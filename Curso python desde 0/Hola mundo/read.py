
#abrir archivos de manera adecuada
myfile = "/home/santiago/Descargas/recuperacion/recurperacion/Curso python desde 0/Hola mundo/vegetales.txt"
with open(myfile, mode="r", encoding="UTF-8") as ruta:

    contenido = ruta.read()
print(contenido)

#escribir en archivos
# Abrir el archivo en modo escritura ("w")
with open("vegetales.txt", "w") as miarch:
    miarch.write("hola puto\n")