### Diccionarios ###
'''Un diccionario es una colección de tipo de datos no ordenado, modificable(mutable) emparejado (clave: valor).
'''

my_diccionary = {
    'age': "16", 
    'name': "Santiago", 
    'Lastname': "Valencia",
    'ID' : 1114242835,
    'country' : "Colombia",
    'city' : "Palmira",
    'Adress' : "Calle 54 #43-29",
    'skills' : [ "Graphic designer", "Brand Designer", "web creator" ]}
print(my_diccionary)

print(len(my_diccionary))
#obetener el emento asociado a la clave que se solitita 
print(my_diccionary.get('age'))
print(my_diccionary.get('name'))
print(my_diccionary.get('Lastname'))
print(my_diccionary.get('ID'))
print(my_diccionary.get('country'))
print(my_diccionary.get('city'))
print(my_diccionary.get('direccion'))
print(my_diccionary['skills'])

#modificar elelementos en un diccionario
my_diccionary['city'] = "Palmira, Valle"
#agregar elementos a un diccionario
my_diccionary['skills'].append('Call center')
#agregar elementos en una posicion especifica de la lista en el diccionario
my_diccionary['skills'].insert(1, 'Call center')

#comprobar claves en un diccionario
print('habilidades' in my_diccionary)
print('age' in my_diccionary)


print(my_diccionary['skills'])

#eliminar elementos en una lista

my_diccionary.pop('age')
my_diccionary.popitem()
#del my_diccionary['Adress']
print(my_diccionary)

#eliminar un elemento especifico
del my_diccionary['name']
print(my_diccionary)

#cambiar diccionario a uina lista de tuplas 
print(type(my_diccionary))
print(my_diccionary.items())

#Eliminar todos los elementos de un diccionario diccionario

'''copiar un diccionaro'''
my_new_D = my_diccionary.copy()
print(my_new_D)
 #eliminar el diccionario
'''my_new_D.clear()
print(my_new_D)
del my_new_D
print(my_new_D)'''

#obtener las claves de un diccionario como una lista

keys_of_mynewD = my_new_D.keys()
print(keys_of_mynewD)


