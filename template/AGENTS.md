# Directrices del Proyecto (Harness Multilenguaje V2)

## 1. Principios de Operación y Documentación Viva (¿Dónde estamos / Qué es esto?)
Este proyecto utiliza un sistema de desarrollo guiado por agentes y documentación persistente. Debes mantener sincronizados los siguientes archivos:
- **`PLAN.md`**: Hoja de ruta y desglose de tareas atómicas.
- **`PROGRESS.md`**: Registro en tiempo real de lo completado y en curso.
- **`ARCHITECTURE.md`**: Decisiones de diseño, contratos de API y estructura (¿Cómo está organizado?).
- **`RESUME.md`**: Resumen ejecutivo del estado actual.
- **`SKILLS.md`**: Habilidades o patrones específicos del proyecto.

- **Spec-Driven:** No escribas código sin antes actualizar el `PLAN.md`.
- **Atomic Commits:** Cambios pequeños y autocontenidos.
- **Sin Suposiciones:** Si falta algo crítico, detente y pregunta.

---

## 2. Detección Automática del Stack Tecnológico
El agente debe inspeccionar la raíz del proyecto al iniciar:
| Indicador en la Raíz | Stack Detectado | Gestor / Herramienta |
| :--- | :--- | :--- |
| `pubspec.yaml` | Flutter / Dart | `flutter` |
| `package.json` | Node.js / TypeScript | `npm`, `pnpm`, `yarn`, `bun` |
| `requirements.txt` / `pyproject.toml` | Python | `pip`, `poetry`, `uv` |
| `Cargo.toml` | Rust | `cargo` |
| `go.mod` | Go | `go` |

---

## 3. Comandos de Verificación Dinámicos (¿Cómo lo ejecuto y verifico?)
Antes de terminar, el agente **DEBE** ejecutar las herramientas del stack activo:
1. **Linter / Análisis:** `flutter analyze`, `npm run lint`, `ruff check`, `cargo clippy`, `golangci-lint run`
2. **Pruebas:** `flutter test`, `npm test`, `pytest`, `cargo test`, `go test ./...`
3. **Build / Compilación:** Asegurar que compile sin errores antes de entregar.
