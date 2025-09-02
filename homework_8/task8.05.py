#Упражнения 5 (Дан список чисел nums и целевое число target. Найти индексы двух чисел, сумма которых равна target.)
def indices(nums, target):
    for i in range(len(nums)):
        for j in range(i + 1, len(nums)):
            if nums[i] + nums[j] == target:
                return [i, j]
    return None
nums = [2, 7, 11, 15]
target = 9

print(indices(nums, target))