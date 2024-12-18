# lab-riscv-asm
## Задание:
1. Создать аккаунт на github (если еще нет) и создать репозиторий с именем lab-riscv-asm.
2. Разработать алгоритм решения вашего варианта задачи.
3. Реализовать алгоритм на языке ассемблера RISCV ISA. Исходный код программы
сохранить в репозитории.
4. Реализовать алгоритм на языке Си. Исходный код программы сохранить в репозитории.
5. Скомпилировать Си-код используя riscv-компилятор. Получить дамп-файл из
скомпилированного исполняемого файла вашей программы. Сохранить дамп-файл в
репозитории.
6. Оформить отчет о проделанной работе и результатах в виде README.md файла вашего
репозитоия.
7. Продемонстрировать результаты работы в симуляторе Venus https://www.kvakil.me/venus/

Каждое задание представляет собой простую задачу на обработку двумерного массива. Непосредственную обработку массива необходимо реализовать в виде отдельной функции с необходимыми аргументами. При написании программы на языке ассемблера следует учесть то, что в явном виде подпрограммы/процедуры/функции в RISC-подобных ассемблерах отсутствуют. Вместо этого существует специальный набор соглашений(ABI), устанавливающий формат передачи аргументов, специальную роль для каждого регистра, формат вызовов и так далее. Для реализации этих методов необходимо использовать соответствующие регистры, описанные в стандарте RISC-V ISA. Передавать параметры необходимо только процедуре, осуществляющей непосредственную обработку массива, остальное - по желанию.

## Вариант

Вариант | Имя           | Задание
--------|---------------|---------
4       | Илья Ануфриев | Найти сумму элементов массива. (N = 4, M = 4)

## Результаты работы

* arrsum.c - Программа на Си
* arrsum.S - Программа на RISC-V ASM
* arrsum.dump - дамп-файл программы на Си

## Сборка
Сборка осуществляется с помощью Makefile в директории files.
Вызов *make* без аргументов соберет программу на Си под risc-v и создаст ее дамп.

```bash
make
```
