#!/bin/bash

set -e

# Directory to store logs
LOG_DIR="lint_logs"
mkdir -p "$LOG_DIR"

# Log file for shfmt output
SHFMT_LOG="$LOG_DIR/shfmt.log"

# Check formatting with shfmt and store output in log file
echo "Checking formatting with shfmt..."
if ! shfmt -d . > "$SHFMT_LOG"; then
  echo "Formatting issues found. Check $SHFMT_LOG for details."
fi

# Lint with shellcheck, showing only errors and printing filenames
echo "Linting with shellcheck..."
has_errors=false
for script in $(find . -name '*.sh'); do
  echo "Linting $script..."
  if ! shellcheck -S error -e SC1091 "$script"; then
    echo "Syntax errors found in $script"
    has_errors=true
    # Log the filename with errors
    echo "$script" >> "$LOG_DIR/shellcheck_errors.log"
  fi
done

if $has_errors; then
  echo "Linting completed with errors. Check $LOG_DIR/shellcheck_errors.log for details."
  exit 1
else
  echo "All checks passed."
fi

echo "Instructions:"
echo "To view shfmt log file:"
echo "  cat $SHFMT_LOG"

