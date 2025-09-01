#Задача 1: Список покупок
shopping_list = [1, "milk", 2, "bread", 3, "eggs", 4, "butter", 5, "apples"]
print("Список покупок:")
for i in range(0, len(shopping_list), 2):
    print(f"{shopping_list[i]}. {shopping_list[i + 1]}")
