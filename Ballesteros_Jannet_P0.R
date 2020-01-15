#Ejercicio 1. A partir de las siguientes secuencias concatenadas de RNA que 
#te env�o como archivo adjunto en formato fasta encuentra 
#(usando librer�as especializadas) 
#la secuencia correspondiente de amino�cidos.

#Crgamos la libreria de Biostring ya que es la nos ayudar� a leer las secuencias
library(Biostrings)
setwd("F:/Documentos/Bioinfo/")

#Ya que es un documento externo con m�s de una secuencia utilizamos el comando readRNAStringSet

secuenciasdeprimer <-readRNAStringSet("first.fasta")
secuenciasdeprimer
##Nos arroja un mensaje que dice "HAPPY NEW YEAR", en la secuencia 1,2 y 3 correspondiente, lo que significa que en estas secuencias habia un aminoacido 

#Utilizamos "traslate" ya que traduce una secuencia de RNA o DNA a aminoacido

traduccion <- translate(secuenciasdeprimer)
traduccion

##Ejercicio 2
Problema
Una cadena es simplemente una colecci�n ordenada de s�mbolos seleccionados de alg�n alfabeto y formados en una palabra; La longitud de una cadena es el n�mero de s�mbolos que contiene.
Un ejemplo de una cadena de ADN de longitud 21 (cuyo alfabeto contiene los s�mbolos 'A', 'C', 'G' y 'T') es "ATGCTTCAGAAAGGTCTTACG".
Dado: una cadena de ADNs de longitud como m�ximo 1000 nt.
Regreso: Cuatro enteros (separados por espacios) que cuentan el n�mero respectivo de veces que aparecen los s�mbolos 'A', 'C', 'G' y 'T's.

#Colocamos la secuencia que esta en la pagin de Rosalin

secuenciaejercicio2 <- ("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
secuenciaejercicio2




















