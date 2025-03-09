my_str_v = "Python"
my_otherstr_v = "es genial"

print(my_str_v + " " + my_otherstr_v)  # Imprime: Python es genial

my_newlinestr = "este es un salto de linea miralo uwu"
print(my_newlinestr) 

my_scapestr = "\\teste es un salto de linea miralo uwu \n escapado"
print(my_scapestr) 

#formateo 

name, surname, age = "Santiago", "Valencia", "16"

print("mi nombre es {} {} y mi edad es {}". format(name, surname, age)) #dar formato a los datos
print("mi nombre es %s %s y mi edad es %s" %(name,surname, age))
print(f"mi nombre es {name} {surname} y mi edad es {age}". format(name, surname, age)) #dar formato a los datos y podemos ver en donde se imprime cada 

# Desempaquetado de caracteres

languaje = "Python" #podemos imprimir el caracter de un dato, en este caso imprimimos las letras de la palabra
a, b, c, d, e, f = languaje
print(a)
print(e)

#division
languaje_slice = languaje [0:6:2]
print(languaje_slice)

languaje_slice = languaje [-2]
print(languaje_slice)



#reverse

reversed_languaje = languaje[::-2]
print(reversed_languaje)

# funciones 

print(languaje.capitalize()) #primera mayusc
print(languaje.upper()) #todo mayusc
print(languaje.count("t")) #cuenta x cosa
print(languaje.isnumeric()) #es numero?
print("1".isnumeric())

print(languaje.lower()) #minusculas

print(languaje.lower().isupper()) #es mayuscula o minuscula?

print(languaje.startswith("Py"))




