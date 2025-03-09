### Listas ###

mylist = list()
my_otherlist = []

print(len(mylist))

mylist = [12, 34, 34, 45, 56, 56]
print(mylist)

my_otherlist = [32, 1.77, "Santiago", "Valencia"]
print(my_otherlist)

print(type(mylist))
print(type(my_otherlist))

print(my_otherlist[0])
print(my_otherlist[1])
print(my_otherlist[-1])
#print(my_otherlist[-3]) Indexerror
#print(my_otherlist[4]) Indexerror
print(my_otherlist.count("#")) #cuenta los elementos de una lista

age, altura, name, surname = my_otherlist
print(age)


print(mylist + my_otherlist)
#print(mylist - my_otherlist)



#insertar un elemento en la lista
my_otherlist.append("Level up")
print(my_otherlist)
# insertar un elemento en la posicion que se desee dentro de la lista
my_otherlist.insert(1, "rojo")
print(my_otherlist)

my_otherlist[1] = "Azul"
print(my_otherlist)

mylist.remove(34)
print(mylist)
# desapilar un elemento de nuestra lista
mylist.pop()
#ver que elemento que se desapilo
#print(mylist.pop())

#elegir la posicion del elemento para eliminar
print(mylist) 
mylist.pop(2)
print(mylist)
#guardar un elemento en un lugar concreto
my_pop_element = mylist.pop(2)
print("se ha eliminado:", my_pop_element)
print(mylist)

#eliminar elemento sin poderlo retornar
del mylist[1]
print(mylist)

mylist.insert(1,13)
print(mylist)
my_new_list = mylist.copy()
#eliminar la lista
mylist.clear()
print(mylist)
print(my_new_list)

#practica xd
myf = []
myf = ["Horacio","Luz"]
print(myf)

print(myf[1])

myf.append("Mateo")
print(myf)

myf.insert(2, "Luisa")
print(myf)

myf[1] = "Luz elena"
print(myf)

my_new_list.reverse()
print(my_new_list)
#ordenar los elemntos de una lsita
