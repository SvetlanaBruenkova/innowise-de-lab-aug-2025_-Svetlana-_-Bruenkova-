#Упражнение 4: List comprehension и словари
words = ["hello", "world", "python", "code"]
# 1. Создать список длин слов, используя списковое включение
lengths = [len(word) for word in words]
print(lengths)
# 2. Создать список слов длиннее 4 символов
lengths = [word for word in words if len(word)>4]
print(lengths)
# 3. Создать словарь: {слово: длина} для всех слов
words = ["hello", "world", "python", "code"]
config = {word: len(word) for word in words} #word — ключ, len(word) — значение.
print(config)