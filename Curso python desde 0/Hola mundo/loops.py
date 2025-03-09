### Loops ####

#while
contador = 0

while contador < 5:
    if contador == 3:
        contador = contador +1
        continue
    print(contador)
    contador = contador +1
    
    
    

### Loops ####

# while
contador = 0
valores = []  # Lista para guardar los valores

while contador < 10:
    valores.append(contador)  # Guardar el valor en la lista
    contador = contador + 1
    if contador == 10:
        valores.append("ya")  # Guardar el mensaje "ya" en la lista

print(valores)  # Imprimir la lista con los valores guardados


contador01 = 0
valoress = []

while contador01 < 5:
    valoress.append(contador01)
    contador01 = contador01 +1
    if contador01 == 5:
        valoress.append("ya bro")

print(valoress)

# For

milst = [30, 23, 59, 49, 47, 83, 93]

for element in milst:
    print(element)

my_tupla = (35, 1.75, "Santiago", "Valencia", "Valencia")

for elemnt in my_tupla: 
    print(elemnt)

my_otherset = {"bananas","platanos","Queso","Yogurt"} #inicialmente es un diccionario'''

for elemnt in my_otherset: 
    print(elemnt)

mylist = [12, 34, 34, 45, 56, 56]

for elemnt in mylist: 
    print(elemnt)

my_diccionary = {
    'age': "16", 
    'name': "Santiago", 
    'Lastname': "Valencia",
    'ID' : 1114242835,
    'country' : "Colombia",
    'city' : "Palmira",
    'Adress' : "Calle 54 #43-29",
    'skills' : [ "Graphic designer", "Brand Designer", "web creator" ]}

for elemnt in my_diccionary.keys(): 
    print(elemnt)
    if elemnt == 'city':
      continue
    print("se ejecuta")
else:
    print("El bucle for para mi diccionario ha finalizado")

    
