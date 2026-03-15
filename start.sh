#!/bin/bash

# Скрипт для запуска локального сервера

PORT=${1:-4444}

echo "Запуск сервера на порту $PORT..."

# Проверка доступности порта
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null ; then
    echo "Порт $PORT уже занят!"
    echo "Используйте другой порт или остановите процесс на этом порту"
    exit 1
fi

# Запуск сервера
python3 -m http.server $PORT
