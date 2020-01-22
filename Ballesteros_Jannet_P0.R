#Ejercicio 1 
#1. A partir de las siguientes secuencias concatenadas de RNA que 
#te envío como archivo adjunto en formato fasta encuentra 
#(usando librerías especializadas) la secuencia correspondiente de aminoácidos.

library(Biostrings)
#Cargamos la libreria Biostrings para poder manipular las cadenas biologicas
setwd("F:/Documentos/Bioinfo/")
#Ya que es un documento externo con más de una secuencia y de tipo RNA, utilizamos el comando readRNAStringSet
file.fasta <- readRNAStringSet("first.fasta")

#Vemos las secuencias 
file.fasta

#Con el comando de translate seguido del nombre del vector que hicimos antes con las secuencias, 
#podemos traducir una secuencia de RNA a aminoacidos.

traduccion_RNA_a_aa <- translate(file.fasta)
#vemos las secuencias que eran de aminoacidos
traduccion_RNA_a_aa

#Cuando lo vemos nos arroja el mensaje "Happy New Year" en donde se contraban los aminoacidos

#Ejercicios de ROSALIND
#Ejercicio 2

#Una cadena es simplemente una colección ordenada de símbolos seleccionados de algún alfabeto y 
#formados en una palabra; La longitud de una cadena es el número de símbolos que contiene.
#Un ejemplo de una cadena de ADN de longitud 21 
#(cuyo alfabeto contiene los símbolos 'A', 'C', 'G' y 'T') es "ATGCTTCAGAAAGGTCTTACG".


secuencia_Rosalind2 <- ("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
#nombramos un vector para introducir la secuencia de la pagina de ROSALIND
secuencia_Rosalind2
#Para poder ver la secuencia

strsplit(secuencia_Rosalind2, "") 

#Dentro de la libreria de Biostrings hay un comando que se llama strsplir, que divide los elementos de un vector de caracteres
#Este comando se imprime y muestra en la consola la secuencia ya dividida con cada base

table(strsplit(secuencia_Rosalind2, "")[[1]])
#muestra una tabla de cuantas veces se repiten las bases nitrogenadas
#A=20
#C=12
#G=17
#T=21


#Referencias para este ejercicio 
https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/strsplit






#Ejercicio 3 ROSALIND

#En las cadenas de ADN , los símbolos 'A' y 'T' son complementos entre sí, al igual que 'C' y 'G'.
#El complemento inverso de una cadena de ADN s es la cuerda sC formado invirtiendo los símbolos de s, 
#luego tomando el complemento de cada símbolo 
#(por ejemplo, el complemento inverso de "GTCA" es "TGAC").

#Conjunto de datos de muestra
AAAACCCGGT
#Salida de muestra
ACCGGGTTTT

#cargamos nuestra secuencia con el comando DNAString
secuencia_DNA <- DNAString("AAAACCCGGT")
#Vemos la cadena
secuencia_DNA

#El comando para el complemento inverso, seguido del nombre de la secuencia

reverseComplement(secuencia_DNA)

#Nos arroja el resultado de la cadena reversa complementaria a la original












