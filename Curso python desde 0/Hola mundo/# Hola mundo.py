# Hola mundo
print ("hola mundo")

print(type("Hola Py"))

# Consultar el tipo de dato:
print(type("soy un dato str")) #tipo 'str'
print(type(5)) #tipo 'int'
print(type(1.5)) #tipo 'float' '''Los tipos de dato float se utilizan cuando los numeros no son un entero''''
print(type(True)) #tipo 'bool' 
print(type(1+1J)) #tipo 'complex'

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





