#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
PROJECT_DIR="$(realpath "${BASEDIR}")"

echo "Formatting project in $PROJECT_DIR"

FILES=$(find $PROJECT_DIR -regex '.*\.[cpp|hpp|cc|cxx|m|mm|c|h]')

for FILE in $FILES; do
    echo "Formatting $FILE"
    clang-format -i $FILE -style=WebKit
done
