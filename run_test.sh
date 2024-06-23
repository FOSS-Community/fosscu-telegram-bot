#!/bin/bash

set -e

# Check dependencies
bash tests/check_dependencies.sh

# Check formatting and linting
bash tests/check_format_and_lint.sh

