#Задача 5: Рисуем Прямоугольник
a=int(input("Введите высоту прямоугольника:"))
b=int(input("Введите ширину прямоугольника:"))
for i in range(a):
    for j in range(b):
        print("*", end="")
    print();