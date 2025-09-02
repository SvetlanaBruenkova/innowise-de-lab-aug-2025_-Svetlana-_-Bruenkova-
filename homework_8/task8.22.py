#Упражнение 2: Функции с параметрами
def add_vat(price):
    nds = 0.20
    return price + price * nds
prices = [1000, 3499, 250]
for price in prices:
    final_price = add_vat(price)
    print(f"Цена с НДС: {final_price}")