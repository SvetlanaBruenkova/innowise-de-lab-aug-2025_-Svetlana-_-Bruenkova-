#Упражнение 3
def  calculate_average_score(scores, ignore_lowest = False):
    if not scores:
        return 0
    if ignore_lowest and len(scores) > 1:
        scores = scores.copy()
        scores.remove(min(scores))

    return sum(scores) / len(scores)
student_data = [
    {'name': 'Алексей', 'scores': [85, 92, 78, 95]},
    {'name': 'Марина', 'scores': [65, 70, 58, 82]},
    {'name': 'Светлана', 'scores': [98, 95, 100]}
]

print("📊 Средние баллы (все оценки):")
for student in student_data:
    avg = calculate_average_score(student['scores'])
    print(f"{student['name']}: {avg:.2f}")

print("\n📉 Средние баллы (без самой низкой оценки):")
for student in student_data:
    avg = calculate_average_score(student['scores'], ignore_lowest=True)
    print(f"{student['name']}: {avg:.2f}")


