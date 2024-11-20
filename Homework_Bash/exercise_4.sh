#!/bin/bash

# Задание: Создайте скрипт с функцией, которая принимает в качестве аргумента строку и выводит её с префиксом "Hello, ".
# Напишите ещё одну функцию, которая принимает два числа и возвращает их сумму.
# Вызовите обе функции в скрипте и продемонстрируйте результат.

hello() {
    echo "Hello, $1"
}

sum() {
    echo $(($1 + $2))
}

read -p "Введите имя: " name
hello "$name"

read -p "Введите первое число: " number1
read -p "Введите второе число: " number2

result=$(sum number1 number2)
echo "Сумма $number1 и $number2 равна $result"