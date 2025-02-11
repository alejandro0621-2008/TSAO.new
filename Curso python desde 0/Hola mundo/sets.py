### Sets ###

my_set = set()
my_otherset = {}

my_otherset = {"bananas","platanos","Queso","Yogurt"} #inicialmente es un diccionario'''
print(type(my_otherset))
print(type(my_set))
print(len(my_otherset))
print(my_set)

#poner nuevos elementos en el set
my_otherset.add("Yuca")
print(my_otherset) #no es una estructura ordenada

my_otherset.add("Yuca") #un set no admite elementos repetidos

#validar si el elemento existe en el set
print("Yuca" in my_otherset)
print("Yuco"in my_otherset)

my_otherset.update(["Mango","Uva"])
print(my_otherset)

my_otherset.remove("Mango")
print(my_otherset)

my_otherset.clear()
print(my_otherset)

my_set  = {"uwu","owo","ewe","7w7"} 
#my_set = list(my_set)
print(my_set)
#print(my_set[1])

my_otherset = {"Python", "Javascript", "flask","Mysql"}
my_new_set = my_set.union(my_otherset)
print(my_new_set.union(my_new_set).union(my_set).union({"C#", "PHP","flask"}))

print(my_new_set.intersection(my_otherset)) 
