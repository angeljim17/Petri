# Redes de Petri en Elixir

Implementación de **redes de Petri** en Elixir con dos representaciones: **lista de relaciones** y **mapa de adyacencias**. Incluye la función `fire` para ejecutar transiciones y actualizar el marcado de la red.

## Stack

- Elixir
- Mix

## Estructura

```
lib/
├── primera parte/
│   ├── redpetri.ex    # Red de Petri (lista y mapa)
│   ├── listap.ex      # Operaciones con representación en lista
│   └── mapap.ex       # Operaciones con representación en mapa
└── segunda parte/
    ├── redpetri_segunda.ex
    ├── listap_segunda.ex
    └── mapap_segunda.ex
```

## Representaciones

| Formato | Ventaja |
|---------|---------|
| **Lista** | Muestra conexiones de forma directa y legible |
| **Mapa** | Acceso rápido a las conexiones de cada nodo |

## Cómo ejecutar

```bash
mix test
```

## Contexto

Proyecto académico de sistemas concurrentes (ITESM).

**Equipo:** Ángel Jiménez Morales (A01735807), Rosa Nelly Herrera Alonso (A01739355)

## Autor

**Ángel Jiménez Morales** — [GitHub](https://github.com/angeljim17)
