### Funciones ###


def mypf():
    Santiago = {
        'nombre': "Santiago",
        'apellido': "Valencia",
        'edad': "16"
    }
    soy = Santiago.keys()
    print(soy)
mypf()  

def sum_numbers(primer, segundo):
    print(primer + segundo)
 
sum_numbers(1,2) 


def sum_two_values_with_return (first_value, second_value):
    return first_value + second_value

my_result = sum_two_values_with_return(10,5)

print(my_result)

def print_name (name, surname):
    print(f"{name} {surname}")

print_name(surname="Valencia", name="Santiago")

def greetings (name="Santiago"):
    message = name + ', welcome to Python for Everyone!'
    return message

print(greetings("hola"))

#le puedo pasar los datos que quiera
def print_texts(*texts):
    for text in texts:
        print(text)
print_texts("hola", "python")

def arg(**cos):
    return cos

print(arg(a= 1,b= 2,c= 3))

