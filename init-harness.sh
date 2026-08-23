#!/bin/bash
HARNESS_PATH="$HOME/.antigravity-harness/template"

if [ ! -d "$HARNESS_PATH" ]; then
  echo "Error: No se encuentra el harness base en $HARNESS_PATH"
  echo "Asegúrate de clonar el repositorio en $HOME/.antigravity-harness"
  exit 1
fi

echo "Inyectando harness en el directorio actual..."
cp -rn "$HARNESS_PATH/.agents" .
cp -n "$HARNESS_PATH/AGENTS.md" .
cp -n "$HARNESS_PATH/SKILLS.md" .
cp -n "$HARNESS_PATH/ARCHITECTURE.md" .
cp -n "$HARNESS_PATH/PLAN.md" .
cp -n "$HARNESS_PATH/PROGRESS.md" .
cp -n "$HARNESS_PATH/RESUME.md" .

echo "¡Harness aplicado con éxito!"
