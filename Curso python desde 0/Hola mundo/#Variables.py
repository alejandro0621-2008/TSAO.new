#Variables

my_string_variable = "hola"
print(my_string_variable)

my_int_variable = 5
print(my_int_variable)

my_bool_variable = False
print(my_bool_variable)

print(my_string_variable, str(my_bool_variable), my_int_variable, my_int_to_str_variable)



my_int_to_str_variable = str(my_int_variable)
print(my_int_to_str_variable)
print(type(my_int_to_str_variable))

# funciones del sistema
print("este es valor de:", my_bool_variable)
print(len(my_string_variable))

# variable en una sola linea

first_name, last_name, alias, edad = "Jose", "Vargas", "Joselo", 35
print("Me llamo:", first_name, last_name, ".Y mi alias es:", alias, ". Mi edad es:", edad )

#ingresar datos en terminal (imputs)
nombre = input("cual es tu name:")
age = input("Cuantos años tienes?")

print(nombre)
print(age)

# forzamos el tipo de datgo?
adress = "Mi direccion"
adress =  30 # Definir la variable tiene mas peso que cambiar el tipo de dato
print(adress)
print(type(adress))
