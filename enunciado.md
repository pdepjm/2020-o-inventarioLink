### Parte A

Existen los siguientes ítems en el mundo de Link:



1. **Espada Maestra:** Esta tiene 100 puntos de desgaste y es un ítem raro.
2. **Banana bélica:** Su nivel de desgaste es igual al 30% de su nivel de potasio. Estas son un ítem raro si su nivel de potasio supera los 100.
3. **Caña de pescar:** Infaltable para vencer a Ganon en cualquier 1v1. Tiene un desgaste variable (nunca mayor a 150) y no es un ítem raro.
4. **Caja mágica:** Una caja donde se puede guardar cualquier ítem para así revestirlo de poder mágico. Tiene 100 puntos más de desgaste que el ítem que tiene dentro y es raro si este lo es.

Existen dos personajes en nuestro mundo: se sabe que Link tiene una cantidad de corazones ganados, y está también Lonk, que no tiene corazones pero sí tiene un ítem principal. Para Lonk está prohibido todo ítem que no sea su ítem principal, pero en el caso de Link un ítem está prohibido si su cantidad de corazones * 100 no supera el desgaste del ítem.

Se pide:



1. Saber si un ítem está prohibido. 
2. Hacer los tests que considere necesarios para probar el funcionamiento correcto del punto anterior.


### Parte B

Link tiene además un inventario con todos los ítems que lleva. También nos interesa que con el joven elfo se pueda hacer lo siguiente:



1. **Agregar** y **sacar** ítems a su inventario. 
2. Que exista la restricción de que** no puede agregar** un ítem prohibido para él.
3. Conocer la cantidad de ítems que tiene Link en su inventario.
4. Conocer los ítems **raros** de Link.
5. Obtener una lista con todos los **desgastes** de los ítems de Link.
6. Tomar una **poción mágica**: Al tomar esta posición todos los ítems del inventario de Link se mejoran. La banana bélica aumenta 10% su potasio, la caña aumenta 3 el desgaste, la caja mejora su ítem y la espada no sufre cambios. 
7. Obtener la **resistencia** total de link,  que es la cantidad de corazones que posee multiplicado por la suma del desgaste de todo su inventario sin contar los items repetidos. 


### Parte C



1. Saber si link está cargado, que es cuando todos sus ítems tienen 200 ó más de desgaste.
2. Saber si link está flaco, que es cuando no tiene ítems raros y además está cargado.
3. Saber cual es el ítem de mayor desgaste que tiene Link en su inventario: En caso de empate, devolver cualquiera.
4. Agregar la restricción de que Link sólo pueda transportar tantos ítems como corazones tenga.
5. Modificar la caja mágica para que pueda tener varios ítems (este es el truco de Link para poder llevar más ítems de lo que puede: sólo debe ponerlos dentro de la caja). 
    1. Al mejorar la caja, mejoran todos sus ítems.
    2. La caja es rara si alguno de sus ítems lo es.
    3. El desgaste de la caja es el promedio de los desgastes de sus ítems.
6. Agregar la **Tableta Sheikah**: Tableta multiusos y muy coqueta que le  permite a Link  tomarse selfies antes y después de cada dura batalla. Su nivel de desgaste es (100 - (10* la cantidad de selfies que se haya hecho con ella)). Al ser un ítem tan antiguo por ahora sólo tiene memoria para 10 selfies. Esta es un ítem raro siempre y cuando tenga memoria como para sacar al menos 4 fotos. Al mejorar, suma dos selfies.
