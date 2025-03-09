


def mean(valor):
      
      if type(valor) == dict:
            the_mean = sum(valor.values()) / len(valor)
      else:
            the_mean  = sum(valor) / len(valor)
      
      return the_mean
Grados_estudiantes = {"Maria" : 9.1, "santiago": 9.8}

print(mean(Grados_estudiantes))

import random

# Elige un número aleatorio entre 0 y 3
numero = random.randint(0, 3)

print(f"Número seleccionado: {numero}")
