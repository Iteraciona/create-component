#!/bin/bash

# Verify the name of the component was provided
if [ -z "$1" ]; then
  echo "Error: Must provide the name of the component."
  echo "Use: create-component <nameOfComponent> [optionalPath]"
  exit 1
fi

# Component's name
COMPONENT_NAME=$1

# Component's path (./components by default)
TARGET_DIR=${2:-"./components"}

# Component's full path
COMPONENT_PATH="$TARGET_DIR/$COMPONENT_NAME"

# Verify whether the path already exists
if [ -d "$COMPONENT_PATH" ]; then
  echo "Error: The component '$COMPONENT_NAME' already exists."
  exit 1
fi

# Create the structure
mkdir -p "$COMPONENT_PATH/controllers"
mkdir -p "$COMPONENT_PATH/models"
mkdir -p "$COMPONENT_PATH/routes"
mkdir -p "$COMPONENT_PATH/services"

# Crear empty files inside the component
touch "$COMPONENT_PATH/controllers/${COMPONENT_NAME}Controller.js"
touch "$COMPONENT_PATH/models/${COMPONENT_NAME}Model.js"
touch "$COMPONENT_PATH/routes/${COMPONENT_NAME}Routes.js"
touch "$COMPONENT_PATH/services/${COMPONENT_NAME}Service.js"

# Success message
echo "Component '$COMPONENT_NAME' was successfully created in path $COMPONENT_PATH."