# Entorno de experimentación — Syncthing

## Sistema principal

Syncthing, versión 2.1.7, ejecutado en Windows mediante dos instancias independientes.

**Sistema de comparación:** Unison.

## Herramientas utilizadas

- Windows.
- PowerShell.
- Visual Studio Code.
- Git y GitHub.
- Syncthing v2.1.7 para Windows de 64 bits.

## Preparación del entorno

Se descargó Syncthing desde su página oficial y se extrajo el archivo ZIP.

Se prepararon dos directorios para realizar las pruebas de sincronización:

- `C:\Users\stefy\Syncthing-Lab\Nodo-A`
- `C:\Users\stefy\Syncthing-Lab\Nodo-B`

También se creó el directorio `C:\Users\stefy\Syncthing-Lab\Config-B` para almacenar la configuración independiente de la segunda instancia.

## Instancias del sistema

| Instancia | Dirección de administración | Estado       |
| --------- | --------------------------- | ------------ |
| Nodo A    | `http://127.0.0.1:8384`     | En ejecución |
| Nodo B    | `http://127.0.0.1:8385`     | En ejecución |

Las dos instancias se ejecutan en un mismo equipo físico. Esto permite estudiar la comunicación entre procesos y simular interrupciones.