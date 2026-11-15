# Bitácora de trabajo — TA-IND-01

**Estudiante:** Steffanny del Rocío Loor Suárez  
**Asignatura:** Aplicaciones Distribuidas  
**Actividad:** TA-IND-01  
**Modalidad:** Individual

## 12 de noviembre de 2026

**Actividades realizadas:**

- Revisión de los requisitos de la actividad TA-IND-01.
- Revisión de las características de MinIO, Ceph, Syncthing y Unison para el análisis de sistemas distribuidos.
- Creación del repositorio público `TA-IND-01` en GitHub.
- Clonación del repositorio en Windows mediante Git.
- Apertura del proyecto en Visual Studio Code.
- Creación de la estructura inicial de carpetas.
- Elaboración del archivo `README.md`.
- Descarga y ejecución de Syncthing v2.1.7 en Windows.
- Comprobación de la primera instancia en 127.0.0.1:8384.
- Creación de las carpetas Nodo-A, Nodo-B y Config-B.
- Configuración y ejecución de una segunda instancia de Syncthing con identidad independiente.
- Verificación del Nodo B mediante la interfaz 127.0.0.1:8385 y los registros de TCP y QUIC.
- Obtención de la captura 01-nodo-b-iniciado.png como evidencia.
- Revisión de los mensajes de PowerShell para comprobar que el segundo nodo se inició correctamente.
- Comprobación de que cada instancia utiliza una configuración y una identidad propias.
- Preparación del archivo experimentos/entorno.md para documentar las herramientas y la configuración utilizada.
- Detención de las instancias de Syncthing y comprobación de que no quedaran procesos activos ni servicios escuchando en los puertos utilizados.
**Problemas encontrados:**

- Al clonar el repositorio apareció una advertencia indicando que estaba vacío.
- Las carpetas vacías no aparecían en GitHub, aunque estaban creadas en la computadora.
- Fue necesario configurar una segunda instancia de Syncthing sin utilizar la misma identidad ni el mismo puerto de administración.
- Después de cerrar Syncthing, todavía aparecían dos procesos activos en Windows.
**Soluciones aplicadas:**

- Se comprobó que la advertencia era normal, ya que el repositorio todavía no contenía archivos.
- Se organizaron las carpetas del proyecto para guardar por separado el informe, los diagramas, las evidencias y los experimentos.
- Se utilizaron archivos .gitkeep para que las carpetas pudieran aparecer en GitHub.
- Se creó una carpeta de configuración independiente para el segundo nodo y se utilizó el puerto 8385 para su interfaz web.
- Se revisaron los registros de ejecución para comprobar que el Nodo B se había iniciado correctamente.
- Se detuvieron los procesos restantes de Syncthing y se verificó mediante PowerShell que ya no estaban activos.

**Tiempo empleado:** 4 horas en total: 2 horas, dedicadas principalmente a revisar las características de los sistemas distribuidos y organizar el repositori, y 2 hora para instalar, configurar y comprobar el funcionamiento de Syncthing.

**Estado:** Estructura inicial del proyecto preparada.

---

## Próximas actividades

- Revisar y organizar las referencias académicas.
- Preparar el bosquejo inicial de arquitectura.
- Diseñar y ejecutar el experimento.
- Registrar capturas, comandos y resultados.
- Elaborar y compilar el informe en LaTeX.
- Grabar la sustentación y comprobar la entrega final.

## 13 de noviembre de 2026

**Actividades realizadas:**

- Revisión del funcionamiento de las dos instancias de Syncthing.
- Detención de los procesos de Syncthing que permanecían activos en Windows.
- Comprobación mediante PowerShell de que no quedaran procesos ejecutándose ni servicios escuchando en los puertos utilizados.
- Organización de los archivos del repositorio para registrar las evidencias de ejecución.
- Actualización de `BITACORA.md` con las actividades, dificultades y soluciones del trabajo realizado.
- Bosquejo inicial de la arquuiectura

**Problemas encontrados:**

- Después de cerrar las ventanas de Syncthing, todavía aparecían dos procesos activos en Windows.

**Soluciones aplicadas:**

- Se detuvieron los procesos restantes de Syncthing mediante PowerShell.
- Se comprobó que no quedaran procesos activos ni conexiones en escucha en los puertos `8384`, `8385` y `62232`.

**Tiempo empleado:** 2 horas

**Estado:** Dos instancias de Syncthing configuradas y comprobadas. Pendiente la conexión entre los nodos y las pruebas de sincronización.

---

## 14 de noviembre de 2026 — Pruebas de sincronización y recuperación

**Tiempo dedicado:** aproximadamente 3 horas.

**Actividades realizadas:**

- Se conectaron los nodos A y B de Syncthing v2.1.7, ejecutados como procesos independientes en la misma computadora.
- Se configuró la carpeta compartida `prueba-sync`, utilizando directorios diferentes para cada nodo.
- Se creó el archivo `prueba.txt` en el Nodo A y se comprobó que apareciera en el Nodo B.
- Se calcularon los hashes SHA-256 de ambos archivos. La comparación dio `True`, lo que confirmó que tenían el mismo contenido.
- Se apagó el Nodo B y se modificó el archivo del Nodo A. Durante la desconexión, los hashes fueron diferentes (`False`).
- Se reinició el Nodo B y se comprobó que Syncthing recuperó la sincronización. Los hashes volvieron a coincidir (`True`).


Se organizaron las capturas de pantalla y los resultados de las pruebas en las carpetas evidencias/ y experimentos/.

Se completó el diagrama de arquitectura de Syncthing y se incorporó al informe junto con el bosquejo inicial.

Se desarrolló el análisis de las transparencias de distribución, consistencia, CAP, PACELC, disponibilidad y tolerancia a fallos.

Se elaboró la comparación documental entre Syncthing y Unison, considerando sus diferencias de arquitectura, sincronización y tratamiento de conflictos.

Se redactaron las conclusiones a partir de los resultados obtenidos y de las limitaciones del laboratorio.

Se incorporaron las evidencias experimentales, las referencias bibliográficas y los anexos al documento LaTeX.

Se revisaron los errores de formato, los nombres de archivos, las referencias a figuras y la presentación de las tablas.

Se compiló el informe mediante pdflatex y biber, y se revisó el PDF generado.


oblemas encontrados:

Fue necesario distinguir entre la interrupción de un proceso y una partición de red para no interpretar incorrectamente el experimento.

Algunos nombres de archivos demasiado largos sobrepasaban el margen derecho del documento.

Se encontraron títulos duplicados en los anexos y diferencias entre la denominación de tablas y cuadros.

Al actualizar el PDF compilado, Git registró una cantidad elevada de líneas modificadas.

oblemas encontrados:

Fue necesario distinguir entre la interrupción de un proceso y una partición de red para no interpretar incorrectamente el experimento.

Algunos nombres de archivos demasiado largos sobrepasaban el margen derecho del documento.

Se encontraron títulos duplicados en los anexos y diferencias entre la denominación de tablas y cuadros.

Al actualizar el PDF compilado, Git registró una cantidad elevada de líneas modificadas.

Soluciones aplicadas:

Se aclararon las limitaciones del experimento y se evitó presentar la recuperación de un proceso como una prueba de tolerancia a fallos físicos.

Se utilizó el comando \path{} de LaTeX para permitir que los nombres de archivos se ajustaran al ancho de la página.

Se corrigieron los títulos duplicados y la presentación de las tablas.

Se revisó el historial de Git y se comprobó que la mayor parte de las diferencias registradas correspondían al archivo PDF.

Se verificó que el último commit se hubiera subido correctamente a la rama main.


**Observaciones:**

La primera prueba permitió comprobar la replicación de archivos entre los dos nodos. En la segunda, el Nodo A pudo seguir modificando su archivo mientras el Nodo B estaba desconectado. Cuando este volvió a funcionar, Syncthing sincronizó los cambios pendientes.

**Limitación:** ambos nodos se ejecutaron en una misma computadora, por lo que las pruebas no demuestran tolerancia a fallos físicos de equipos independientes.