#!/bin/bash
set -m

# Задание: Напишите скрипт, который запускает три команды sleep с разными временами в фоновом режиме.
# Используйте команды jobs, fg, bg, чтобы продемонстрировать управление этими задачами.

trap "bg" SIGTSTP

sleep 6 &
sleep 9 &
sleep 12 &

jobs

fg %1

bg %1

jobs

sleep 6

jobs

# Опишите, что вы наблюдали.
# alexde@alexde-VM:~/DE/Mentors/repository/mentors_seminar/Homework_Bash$ bash exercise_5.sh 
# [1]   Running                 sleep 6 &
# [2]-  Running                 sleep 9 &
# [3]+  Running                 sleep 12 &
# sleep 6
# ^Z[1]+ sleep 6 &
# [1]   Running                 sleep 6 &
# [2]-  Running                 sleep 9 &
# [3]+  Running                 sleep 12 &
# [1]   Done                    sleep 6
# [2]-  Running                 sleep 9 &
# [3]+  Running                 sleep 12 &



