#Задача 3: Угадай число
secret_number = 7

while True:
    a = int(input("Угадай число от 1 до 10: "))
    if a == secret_number:
        print("Поздравляю! Вы угадали число!")
        break
    else:
        print("Неверно, попробуйте еще раз.")
