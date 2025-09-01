#Задача 3: Угадай число
import random

n = random.randint(1, 10)

while True:
    a = int(input("Угадай число от 1 до 10: "))
    if a == n:
        print("Поздравляю! Вы угадали число!")
        break
    else:
        print("Неверно, попробуйте еще раз.")
