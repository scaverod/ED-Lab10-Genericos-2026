# Ejercicio: Introducción a Genéricos

### Información del Proyecto
| Descripción | Detalles |
|---------------|------------------------------------|
| Profesores | Sergio Cavero y Salvador Sánchez |
| Asignatura | Estructuras de Datos |
| Universidad | Universidad Rey Juan Carlos |
| Curso | 2025/2026 |

---

## Objetivo

Comprender cómo los **Tipos Abstractos de Datos (TAD) Genéricos** permiten escribir código reutilizable. Pasarás de una lista de enteros a una lista de libros y por último, a una lista genérica que funciona con cualquier tipo.

---

## Contexto: El Problema de no usar genéricos

Sin genericidad, necesitarías:
- `uListaInteger.pas` (~150 líneas)
- `uListaLibro.pas` (~150 líneas)
- `uListaAutor.pas` (~150 líneas)
- ... para cada tipo

**Total: 450+ líneas prácticamente DUPLICADAS**

Con genéricos:
- `uListaGenerica.pas` (~150 líneas)
- Solo cambias `uTElement.pas` para cada tipo

**Total: ~170 líneas SIN duplicación**

---


## Ejercicio 1: Modificar Lista para TLibro

**Tarea**: Modifica `uListaLibros.pas` para que almacene `TLibro` en lugar de `integer`.

Comprueba que funciona correctamente haciendo uso de `test_lista_libros.pas`.

**Aviso**: el método `getFirst` pasa a declararse como un `procedure` con esta firma:

```pascal
procedure getFirst(lst: tLista; var x: TLibro);
```


**Pregunta:** ¿Cambió la LÓGICA de la lista o solo los TIPOS?

---

## Ejercicio 2: Crear Lista Genérica

### Paso 1: Implementar `uTElement.pas`

Define un contenedor genérico:
```pascal
type
    TElement = record
        libro: TLibro;
    end;

procedure assign(var e: TElement; e2: TElement);
function toString(e: TElement): string;
```

La idea: La lista genérica NO SABE qué contiene TElement. Solo usa `assign()` y `toString()`.

### Paso 2: Modificar `uListaGenerica.pas`

De la misma manera que anteriormente modificaste la lista para libros, ahora hazlo para que use `TElement` en lugar de `integer` o `TLibro`.

**Pregunta:** ¿Qué cambios tuviste que hacer en la lógica de la lista para que funcione con `TElement`?

Comprueba que tu lista genérica funciona correctamente con `test_lista_generica.pas`.

### Ejercicio 3: Probar con otro tipo

Ahora, modifica `uTElement.pas` para que almacene, por ejemplo un registro que represente una película:

```pascaltype
    TElement = record
        titulo: string;
        director: string;
    end;
```

Modifica `assign()` y `toString()` para que funcionen con este nuevo tipo. Sin cambiar nada en `uListaGenerica.pas`, comprueba que tu lista genérica ahora puede almacenar películas sin ningún cambio adicional.

Crea un programa de prueba `test_lista_peliculas.pas` para verificar que todo funciona correctamente.

**Pregunta:** ¿Tuviste que cambiar algo en la lógica de la lista para que funcione con películas? ¿O solo cambiaste el tipo de dato en `TElement`?
