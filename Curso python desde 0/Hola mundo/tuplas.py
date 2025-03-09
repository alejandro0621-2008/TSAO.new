#### tuplas ###

my_tupla = tuple()
myotratupla = ()

my_tupla = (35, 1.75, "Santiago", "Valencia", "Valencia")
myotratupla = (60,30,45,70)

print(my_tupla)
print(type(my_tupla))
print(my_tupla[0])
print(my_tupla[-1])
print(my_tupla[-4])
print(my_tupla[-1])

print(my_tupla.count("Santiago"))
print(my_tupla.index("Valencia"))
print(my_tupla.index("Santiago"))

#my_tupla[1] = 1.80 no lo podemos asignar como tal
print(my_tupla)

my_sumtupla = myotratupla + my_tupla 
print(my_tupla + myotratupla)
print(my_sumtupla)
'''las tuplas no son mutables'''
print(my_sumtupla[3:6])

my_tupla = list(my_tupla)
print(type(my_tupla))

my_tupla[4] = "Level up"
my_tupla.insert(1,"Verde")
print(my_tupla)
print(tuple(my_tupla))

#del my_tupla  no esta definida 
#print(my_tupla)

#practica
 
soy = tuple()

soy = ("santiago", "Valencia", 2)
print(soy)
print(soy[1])
print(soy.count("santiago"))
print(soy.index(2))
soy = list(soy)
print(type(soy))
print(soy)
soy[0] = "16"
print(soy)
soy.insert(0, 16.5)
print(soy)
del soy[1]
print(soy)