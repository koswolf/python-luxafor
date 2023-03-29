#!/bin/sh

set -e

echo "Installing dependencies"

pip install pip-tools

python -m piptools compile --extra dev -o requirements.dev.txt pyproject.toml --resolver=backtracking
pip install -r requirements.dev.txt
rm requirements.dev.txt
