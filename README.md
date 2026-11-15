# TA-IND-01 — Análisis crítico de un sistema distribuido real

**Universidad:** Universidad Técnica Estatal de Quevedo (UTEQ)  
**Asignatura:** Aplicaciones Distribuidas  
**Estudiante:** Steffanny del Rocío Loor Suárez  
**Semestre y paralelo:** Séptimo semestre, paralelo "B"  
**Actividad:** TA-IND-01 — Análisis crítico comparativo de un sistema distribuido real  
**Modalidad:** Individual  
**Estado:** Finalizado

## Descripción

Este repositorio contiene el desarrollo de la actividad TA-IND-01, centrada en el análisis de **Syncthing**, una herramienta de sincronización de archivos basada en una arquitectura entre pares (P2P), y su comparación con **Unison**, otra solución que permite sincronizar archivos entre equipos.

El trabajo analiza la arquitectura distribuida, los mecanismos de comunicación, las transparencias de distribución, los principios CAP y PACELC, la consistencia y la tolerancia a fallos.

Además del análisis teórico, se realizaron pruebas prácticas con Syncthing para observar la replicación de archivos y la recuperación de la sincronización después de una interrupción.

## Sistemas analizados

### Syncthing

Es el sistema principal del estudio. Se analizaron su arquitectura P2P, el intercambio de archivos entre dispositivos y su comportamiento durante una interrupción temporal.

Para las pruebas se ejecutaron dos instancias independientes de Syncthing, identificadas como A y B, en una misma computadora con Windows.

### Unison

Se utilizó como sistema de comparación para identificar diferencias en los mecanismos de sincronización, comunicación y resolución de cambios.

La comparación con Unison se realizó mediante documentación técnica. **No se realizaron pruebas experimentales con Unison.**

## Experimentos realizados

Se desarrollaron dos pruebas principales:

**1. Sincronización inicial**

Se configuró una carpeta compartida denominada `prueba-sync` entre las instancias A y B. Después de sincronizar un archivo, se compararon sus hashes SHA-256 para verificar que ambas copias tuvieran el mismo contenido.

**2. Recuperación después de una interrupción**

Se detuvo temporalmente la instancia B y se modificó el archivo en A. Durante la interrupción, los archivos presentaron diferencias. Al reiniciar B, Syncthing recuperó la sincronización y los hashes SHA-256 volvieron a coincidir.

Estas pruebas permitieron observar el comportamiento del sistema ante una interrupción temporal, dentro de las condiciones del entorno utilizado.

## Estructura del repositorio

```text
TA-IND-01/
├── README.md
├── BITACORA.md
├── informe/
│   ├── informe.tex
│   └── informe.pdf
├── figuras/
│   ├── arquitectura-syncthing.drawio
│   └── arquitectura-syncthing.png
├── evidencias/
│   └── Capturas de las pruebas y lecturas académicas
├── experimentos/
│   ├── resultado-sincronizacion.txt
│   └── resultado-recuperacion.txt
├── referencias/
│   └── referencias.bib
└── anexos/
    └── bosquejo-inicial-syncthing.jpeg
```

## Informe académico

El informe incluye:

- Descripción y arquitectura de Syncthing.
- Análisis de comunicación y transparencias de distribución.
- Discusión de CAP, PACELC y consistencia.
- Evaluación de mecanismos de tolerancia a fallos.
- Comparación entre Syncthing y Unison.
- Resultados de los experimentos realizados.
- Evidencias de ejecución y lecturas académicas anotadas.
- Conclusiones y referencias bibliográficas.

**Informe final:** [Ver informe en PDF](informe/informe.pdf)

**Código fuente:** [Ver informe en LaTeX](informe/informe.tex)

## Compilación del informe

El informe fue elaborado en LaTeX y utiliza Biber para gestionar las referencias bibliográficas.

Para compilarlo, se necesita una distribución de LaTeX, como MiKTeX o TeX Live, con Biber instalado.

Desde la carpeta `informe/`, ejecutar:

```powershell
pdflatex -interaction=nonstopmode -halt-on-error informe.tex
biber informe
pdflatex -interaction=nonstopmode -halt-on-error informe.tex
pdflatex -interaction=nonstopmode -halt-on-error informe.tex
```

El resultado es el archivo `informe.pdf`.

## Video de sustentación

Se preparó un video de presentación del trabajo, en el que se explican el funcionamiento de Syncthing, las pruebas de sincronización y recuperación, la comparación con Unison y las conclusiones del análisis.

**[Ver video de sustentación en YouTube](https://youtu.be/xDm5BvYRC8Q)**

Enlace directo: https://youtu.be/xDm5BvYRC8Q

## Referencias académicas

El análisis se apoya en documentación oficial de Syncthing y Unison, el libro *Distributed Systems* de van Steen y Tanenbaum (2023), y tres artículos académicos sobre replicación, consistencia y disponibilidad en sistemas distribuidos.

Las referencias bibliográficas se encuentran en [`referencias/referencias.bib`](referencias/referencias.bib).

## Bitácora y evidencias

El archivo [`BITACORA.md`](BITACORA.md) contiene el registro cronológico del desarrollo del trabajo.

La carpeta `evidencias/` reúne las capturas de las configuraciones, las pruebas realizadas, los resultados observados y los fragmentos resaltados de las lecturas académicas.

## Alcance y limitaciones

Las pruebas se realizaron con dos instancias independientes de Syncthing en una misma computadora, por lo que no representan una evaluación entre dos equipos físicos ni permiten medir el comportamiento ante fallos reales de red.

La comparación con Unison es documental y no incluye resultados experimentales propios de esa herramienta.

## Conclusión

El desarrollo de esta actividad permitió comprender mejor cómo funciona la sincronización de archivos en un sistema distribuido y observar la recuperación de la sincronización después de una interrupción temporal.

También permitió identificar diferencias entre Syncthing y Unison y relacionar los resultados de las pruebas con los conceptos estudiados en la asignatura de Aplicaciones Distribuidas.