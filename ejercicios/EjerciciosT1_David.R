#Tarea Tema 2

# 1- Si hubiéramos empezado a contar segundos a partir de las 12 campanadas 
# que marcan el inicio de 2018, ¿a qué hora de qué día de qué año llegaríamos 
# a los 250 millones de segundos? ¡Cuidado con los años bisiestos!
fseg <- function(seg){ 
min=seg%/%60
seg_r=seg%%60

hora=min%/%60
min_r=min%%60

dias=hora%/%24
hora_r=hora%%24

print(sprintf("%i días : %i horas : %i minutos : %i segundos",dias, hora_r, min_r, seg_r))
}

fseg(25*10^7)

años_t=dias%/%365
print(años_t)
dias_t=(dias%%365)-2
print(dias_t)

# 2- Cread una función que os resuelva una ecuación de primer grado (de la forma Ax+B=0).
# Es decir, vosotros tendréis que introducir como parámetros los coeficientes 
# (en orden) y la función os tiene que devolver la solución. Por ejemplo, si la 
# ecuación es 2x+4=0, vuestra función os tendría que devolver -2.
# Una vez creada la función, utilizadla para resolver las siguientes ecuaciones de primer grado:
#   5x+3=0
#   7x+4 = 18
#   x+1 = 1

grado1 <- function(a,b,c){
  x=(c-b)/a
  print(paste(sprintf("La solución para %ix + %i = %i es x = %g", a, b, c, x )))
}
grado1(5,3,0)
grado1(7,4,18)
grado1(1,1,1)    

# 3- Dad una expresión para calcular 3e-π y a continuación, dad el resultado que habéis 
# obtenido con R redondeado a 3 cifras decimales.
# Dad el módulo del número complejo (2+3i)^2/(5+8i) redondeado a 3 cifras decimales.

calc=3*exp(-pi)
round(calc,3)

calc2=(2+3i)^2/(5+8i)
round(calc2,3)
