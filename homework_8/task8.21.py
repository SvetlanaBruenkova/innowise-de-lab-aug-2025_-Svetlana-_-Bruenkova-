#Упражнение 1: Функции без параметров

import datetime # подключаем модуль
def show_current_time():
    now = datetime.datetime.now()
    print("Текущие дата и время:", now.strftime("%Y-%m-%d %H:%M:%S"))
show_current_time()