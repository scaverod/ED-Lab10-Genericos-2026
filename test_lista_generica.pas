program test_lista_generica;

uses sysutils, uListaGenerica, uTElement, uTLibro;

var
    lista: tLista;
    elem1, elem2, elem3: TElement;
    primerElem: TElement;

begin
    writeln(#13#10'====== PRUEBA: LISTA GENÉRICA ======');
    writeln('');
    writeln('Esta lista es GENÉRICA. Usa TElement en lugar de TLibro.');
    writeln('TElement puede ser modificado para contener lo que quieras.');
    writeln('');
    
    initialize(lista);
    
    { Crear elementos que contienen libros }
    elem1.libro.titulo := 'El Quijote';
    elem1.libro.autor := 'Cervantes';
    elem1.libro.ISBN := '978-84-01-00001-8';
    
    elem2.libro.titulo := 'Cien Años de Soledad';
    elem2.libro.autor := 'García Márquez';
    elem2.libro.ISBN := '978-84-01-00002-5';
    
    elem3.libro.titulo := 'La Metamorfosis';
    elem3.libro.autor := 'Kafka';
    elem3.libro.ISBN := '978-84-01-00003-2';
    
    writeln('Insertando elementos...');
    insertLast(lista, elem1);
    writeln('  -> ' + uTElement.toString(elem1));
    insertLast(lista, elem2);
    writeln('  -> ' + uTElement.toString(elem2));
    insertLast(lista, elem3);
    writeln('  -> ' + uTElement.toString(elem3));
    
    writeln('');
    writeln('Estado de la lista genérica:');
    writeln(uListaGenerica.toString(lista));
    
    writeln('Tamaño: ' + IntToStr(size(lista)));
    getFirst(lista, primerElem);
    writeln('Primer elemento: ' + uTElement.toString(primerElem));
    writeln('');
    writeln('✓ La lista genérica almacena TElement.');
    
    clear(lista);
    readln;
end.
