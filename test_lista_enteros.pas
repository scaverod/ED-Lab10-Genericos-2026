program test_lista_enteros;

uses sysutils, uListaEnteros;

var
    lista: tLista;
    i: integer;

begin
    writeln(#13#10'====== PRUEBA: LISTA DE ENTEROS ======');
    writeln('');
    
    initialize(lista);
    
    writeln('Insertando: 10, 20, 30');
    insertLast(lista, 10);
    insertLast(lista, 20);
    insertLast(lista, 30);
    
    writeln('Lista: ' + uListaEnteros.toString(lista));
    writeln('Tamaño: ' + IntToStr(size(lista)));
    writeln('Primer elemento: ' + IntToStr(getFirst(lista)));
    
    writeln('');
    writeln('Eliminando el primer elemento...');
    deleteFirst(lista);
    writeln('Lista: ' + toString(lista));
    
    clear(lista);
    writeln('');
    writeln('✓ Test completado exitosamente');
    readln;
end.
