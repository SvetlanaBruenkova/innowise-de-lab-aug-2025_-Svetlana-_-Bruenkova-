#Задание 4: Игра «Угадай число»
import random

number = random.randint(1, 5)
print("Я загадал число от 1 до 5. Попробуй угадать!")
a = int(input("Введите число: "))

if a == number:
    print("Ты угадал!")
elif a < number:
    print("Слишком мало!")
else:
    print("Слишком много!")

