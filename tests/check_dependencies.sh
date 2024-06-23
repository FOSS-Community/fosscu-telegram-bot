#!/bin/bash

dependencies=("git" "curl" "jq" "bc" "neofetch" "shuf" "shfmt" "shellcheck")

check_dependencies() {
  for dependency in "${dependencies[@]}"; do
    if ! command -v "$dependency" &> /dev/null; then
      echo "Error: $dependency is not installed."
      exit 1
    fi
  done
  echo "All dependencies are installed."
}

check_dependencies

