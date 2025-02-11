import pandas as pd

data =  [[2,4,6],[10,20,30]]

df = pd.DataFrame(data, columns=["Precio","Edad","Valor"], 
    #agregarnombres a las listas
    index=["fila1","fila2"])
print(df)

#usr and passwords
usrnpass = pd.DataFrame({'Usuario': ["Jhon", "123"],'password' : [123, 1234]})
print(usrnpass['password'].mean())
