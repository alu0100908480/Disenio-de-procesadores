#Práctica 1. Multiplicador de booth#

## 1.Antecedentes ##

Para el **correcto desarrollo de esta práctica**, ha sido necesario repasar algunos conceptos básicos vistos en cursos anteriores del lenguaje de programación **verilog** y el funcionamiento del **algorítmo de multiplicación de booth**.

## 2.Conceptos clave ##

* ###Algoritmo de booth###
Algoritmo de multiplicación que permite trabajar con números en complemento a2 teniendo en cuenta el signo de los operandos.
A continuación podemos observar el esquema del circuito que usamos para la implementación.

![]()

		Se realizan X iteraciones del siguiente bucle:
        1. Se observan los bits menos significativos de P:
			00 o 11	--> no se hace nada
			01		 -->
            10		 -->
        2. Desplazamos el contenido del registro P
		   conservando el bit de signo.

* ###verilog###
Lenguaje de programación orientado a la simulación de hardware.


## 3.Desarrollo ##

La práctica fue desarrollada durante el transcurso de dos sesiones prácticas de laboratorio y en aproximadamente unas 4 horas de trabajo autónomo.

## 4.Conclusión ##

En el caso de que los estados de nuestro sistema cambien junto con la señal de reloj es aconsejable conseguir que las señales necesarias en el siguiente ciclo estén preparadas antes.