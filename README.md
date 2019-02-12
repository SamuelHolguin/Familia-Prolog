# Familia-Prolog
# Mi Familia en Prolog
**Lenguaje de programación lógico e interpretado [Prolog](https://www.ecured.cu/Prolog_(lenguaje_de_programaci%C3%B3n))**. La programación lógica es un paradigma de los lenguajes de programación en el cual los programas se consideran como una serie de aserciones lógicas. De esta forma, el conocimiento se representa mediante reglas, tratándose de sistemas declarativos.
a continuación se mostraran algunos elementos simples que fueron necesarios para realizar el programa de familia, el cual muestra quienes son familia, quien es feliz, quien esta casado, entre otras.
## Elementos en prolog
* Átomos: Es una definición genérica de un objeto del mundo que queremos representar.
* Predicados: Nos permite especificar características de los objetos de nuestro mundo o las relaciones entre ellos.
### Hechos
Es algo que está ocurriendo en el mundo, característica o relación entre objetos. En el lenguaje natural un hecho podría ser por ejemplo que Lógica y Compatibilidad es una asignatura de Ingeniería Informática. Expresan relaciones entre objetos. Suponiendo que se quiera expresar el hecho de que "un coche tiene ruedas". Este hecho, consta de dos objetos, "coche" y "ruedas", y de una relación llamada "tiene". La forma de representarlo en PROLOG es: tiene(coche,ruedas).

* Los nombres de objetos y relaciones deben comenzar con una letra minúscula.
* Primero se escribe la relación, y luego los objetos separados por comas y encerrados entre paréntesis.
* Al final de un hecho debe ir un punto (".").
* El orden de los objetos dentro de la relación es arbitrario, pero debemos ser coherentes a lo largo de la base de hechos.

### Variables
No es variable con el concepto que se tiene de ella en la programación habitual. En Prolog, una variable representa el valor de un Átomo. Representan objetos que el mismo PROLOG determina. Una variable puede estar instanciada ó no instanciada. Estar instanciada cuando existe un objeto determinado representado por la variable. Los nombres de variables comienzan siempre por una letra mayúscula.

Un caso particular es la variable anónima, representada por el carácter subrayado ("_"). Es una especie de comodín que utilizaremos en aquellos lugares que debería aparecer una variable, pero no nos interesa darle un nombre concreto ya que no vamos a utilizarla posteriormente.

### Reglas
Las reglas se utilizan en PROLOG para significar que un hecho depende de uno ó mas hechos. Son la representación de las implicaciones lógicas del tipo p ---> q (p implica q).

* Una regla consiste en una cabeza y un cuerpo, unidos por el signo ":-".
* La cabeza está formada por un único hecho.
* El cuerpo puede ser uno ó mas hechos (conjunción de hechos), separados por una coma (","), que actúa como el "y" lógico.
* Las reglas finalizan con un punto (".").
La cabeza en una regla PROLOG corresponde al consecuente de una implicación lógica, y el cuerpo al antecedente. Este hecho puede conducir a errores de representación. Supongamos el siguiente razonamiento lógico: **tiempo(lluvioso) ----> suelo(mojado) suelo(mojado)**

Que el suelo está, mojado, es una condición suficiente de que el tiempo sea lluvioso, pero no necesaria. Por lo tanto, a partir de ese hecho, no podemos deducir mediante la implicación, que está, lloviendo (pueden haber regado las calles). La representación correcta en PROLOG, sería:

**suelo(mojado):- tiempo(lluvioso). suelo(mojado)**.

Adviértase que la regla está "al revés". Esto es así por el mecanismo de deducción hacia atrás que emplea PROLOG.
## Referencias
* <https://www.ecured.cu/Prolog_(lenguaje_de_programaci%C3%B3n)>
* <http://www.cs.us.es/~fsancho/?e=73>
* <https://users.dcc.uchile.cl/~abassi/IA/Prolog.html>
* <http://www.gedlc.ulpgc.es/docencia/lp/documentacion/GB_Prolog.pdf>
