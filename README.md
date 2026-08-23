# Antigravity Harness Base

Este repositorio contiene una plantilla estructural (harness) diseñada para potenciar y organizar el desarrollo guiado por agentes de IA (como Antigravity, Claude, etc.). 

Su objetivo principal es proveer una **memoria persistente**, herramientas preconfiguradas y flujos de trabajo estandarizados a cualquier proyecto de software, sin importar el lenguaje de programación, manteniendo a la IA enfocada, documentada y alineada con tus objetivos.

## 📁 Estructura del Repositorio

- **`global/mcp_config.json`**: Configuración global de servidores MCP (Model Context Protocol). Habilita capacidades avanzadas para los agentes, como acceso al sistema de archivos local, operaciones de Git y acceso a documentación en tiempo real a través de Context7.
- **`template/`**: El esqueleto base que se inyectará en tus proyectos.
  - **`AGENTS.md`**: El manifiesto principal. Define reglas, principios de operación y cómo la IA debe interactuar con el código.
  - **`PLAN.md` & `PROGRESS.md`**: Manejan la hoja de ruta y el estado actual de las tareas, evitando que la IA pierda el hilo o alucine.
  - **`ARCHITECTURE.md` & `RESUME.md`**: Documentación viva sobre las decisiones técnicas y un resumen ejecutivo del proyecto.
  - **`SKILLS.md`**: Patrones y habilidades específicas requeridas para tu proyecto.
  - **`.agents/subagents/`**: Definición de subagentes especializados (por ejemplo, el agente `architect` que desglosa problemas).
- **`init-harness.sh`**: El script de inyección. Copia la estructura de la carpeta `template` al directorio en el que estés trabajando.

## 🚀 Instalación (Configuración inicial)

Para que el script funcione correctamente desde cualquier lugar de tu sistema, debes clonar este repositorio (o asegurarte de que resida) en el directorio oculto `.antigravity-harness` en tu carpeta de usuario:

```bash
git clone <URL_DE_ESTE_REPOSITORIO> ~/.antigravity-harness
```
*(Si ya tienes los archivos de forma local, puedes simplemente mover o enlazar la carpeta a `~/.antigravity-harness`)*.

## 🛠 Cómo Usarlo en un Nuevo Proyecto

Cada vez que inicies un proyecto nuevo o quieras integrar esta estructura de IA en uno existente, sigue estos pasos:

1. Ve a la raíz de tu proyecto en la terminal:
   ```bash
   cd /ruta/a/tu/proyecto
   ```

2. Ejecuta el script de inicialización:
   ```bash
   ~/.antigravity-harness/init-harness.sh
   ```

3. **¡Listo!** Toda la estructura, políticas y memoria persistente se habrán inyectado en tu proyecto sin sobreescribir tus archivos de código. Tu agente de IA ahora puede comenzar a operar leyendo los lineamientos en `AGENTS.md`.

## 🧠 Ciclo de Trabajo de la IA (Spec-Driven)

Al usar este arnés, le exiges a la IA que opere bajo los siguientes estándares:
1. Inspecciona el entorno y detecta automáticamente el stack (Node.js, Python, Flutter, Rust, Go).
2. Documenta el enfoque en `PLAN.md` **antes** de escribir código.
3. Genera *Atomic Commits* (cambios pequeños y testeables).
4. Ejecuta verificaciones dinámicas antes de finalizar una tarea (Linters, Tests, Builds) de acuerdo a las herramientas del stack detectado.
