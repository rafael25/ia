% aliment(Nombre, Color, Forma/Caracteristica, Vitamina/Mineral)
alimento(naranja, naranja, redonda, c).
alimento(limon, verde, redoda, c).
alimento(platano, amarillo, curvo, potasio).
alimento(espinaca, verde, hojas, hierro).

limpiar:- write('\033[2J').

buscarAlimento:- limpiar, write('Vitamina o mineral: '), read(VitMin), alimento(Nombre,_,_,VitMin), nl, write(Nombre), fail.

buscarAlimento:- nl, write('Busqueda terminada').

buscarPropiedades:- limpiar, write('Alimento: '), read(Nombre),verificarAlim(Nombre).

verificarAlim(Nombre):- alimento(Nombre, X, Y, Z), nl, write(X), tab(3), write(Y), tab(3), write(Z).

verificarAlim(Nombre):- \+alimento(Nombre, _, _, _), write('Error no existe').

tipoD:- limpiar, write('Tipo descuento: '), read(Tipo), verificaD(Tipo).

verificaD(bronze):- write('Tu descuento es 15%').
verificaD(plata):- write('Tu descuento es 20%').
verificaD(oro):- write('Tu descuento es 30%').
verificaD(_):- write('Error no existe').
