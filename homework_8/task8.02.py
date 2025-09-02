#Упражнение 2: Методы строк и форматинг
email = " USER@DOMAIN.COM "
#1. Очистить и отформатировать до вида: "user@domain.com"
cleaned_email = email.strip().lower()
print(cleaned_email)  # 'user@domain.com'
# #2. Разделить на имя пользователя и домен
username, domain = cleaned_email.split("@")
print("Имя пользователя:", username)  # 'user'
print("Домен:", domain)               # 'domain.com'
#3. Используя f-строку, создать: "Username: user, Domain: domain.com"
username = "user"
domain = "domain.com"
log_entry = f"Username: {username}, Domain: {domain}"
print(log_entry)
