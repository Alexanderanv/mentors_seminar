#!/bin/bash

# 1. Напишите скрипт, который выводит текущее значение переменной PATH и добавляет в неё новую директорию, переданную в качестве аргумента.

echo "Значение переменной PATH: $PATH"

if [ -z "$1" ]; then
    echo "Не передано новое значение PATH. Переменная PATH не изменена"
    exit 1
fi

export PATH="$PATH:$1"
echo "Новое значение PATH: $PATH"

# 2. Объясните, почему изменения переменной PATH, сделанные через терминал, временные, и предложите способ сделать их постоянными. 

# Изменения переменной PATH, сделанные в терминале, являются временными, потому что они действуют только для текущей сессии терминала. 
# При открытии нового терминала переменная PATH возвращается к своему первоначальному значению, так как переменные окружения не сохраняются между сессиями.

# Добавьте команду в файл .bashrc и продемонстрируйте, как перезапустить терминал для применения изменений.
# Здесь может не понял вопрос как это продемонстрировать. Закрыть и открыть заново?)