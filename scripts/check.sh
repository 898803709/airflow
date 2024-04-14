
#!/bin/sh

CHECK="all"

if [ "$#" -ne 0 ]; then
  CHECK="$1"
fi

case $CHECK in
  "black")
    echo "Pythonコードスタイルのチェック中(black)..."
    poetry run black --diff .
    ;;
  "isort")
    echo "Pythonコードスタイルのチェック中(isort)..."
    poetry run isort --check-only .
    ;;
  "mypy")
    echo "Pythonの型チェック中(mypy)..."
    poetry run mypy --ignore-missing-imports .
    ;;
  "all")
    echo "Pythonコードスタイルのチェック中(black)..."
    poetry run black --diff .
    echo "Pythonコードスタイルのチェック中(isort)..."
    poetry run isort --check-only .
    echo "Pythonの型チェック中(mypy)..."
    poetry run mypy --ignore-missing-imports .
    ;;
esac
