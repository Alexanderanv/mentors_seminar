#!/bin/bash

# Задание: Создайте скрипт, который выполняет следующие действия:

# 1. Читает данные из файла input.txt.
# 2. Перенаправляет вывод команды wc -l (подсчет строк) в файл output.txt.
if [[ ! -f input.txt ]]; then
    echo "Файл input.txt не существует"
    exit 1
fi

cat input.txt | wc -l  >> output.txt

# 3. Перенаправляет ошибки выполнения команды ls для несуществующего файла в файл error.log.
ls nonexist 2> error.log
