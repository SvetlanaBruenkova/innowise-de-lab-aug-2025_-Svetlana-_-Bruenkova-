#Задача 4: Обработка данных
scores = [75, 88, -10, 95, 100, -25, 89]
total_score = 0

for score in scores :
    if score < 0:
        continue # Пропускаем отрицательные баллы
    if score==0:
        print("Обработка прервана.")
        break  # Прерываем цикл при 0
    total_score += score
    print(f"Добавлен балл: {score}")
else:
    print("Все данные успешно обработаны.")

print(f"\n Итоговая сумма баллов: {total_score}")