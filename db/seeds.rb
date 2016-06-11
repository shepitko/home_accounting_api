spend = [
	['Продукты', 'shopping-basket '],
	['Одежда', 'black-tie'],
	['Техника', 'camera-retro'],
	['Подарки', 'gift'],
	['Бытовая химия', 'flask'],
	['Рестораны', 'glass or glass'],
	['Путешествия', 'compass'],
	['Проезд', 'bus'],
	['Развлечение', 'puzzle-piece or gamepad'],
	['Другое',  'meh-o']
]

income = [
	['Зарплата', 'credit-card'],
	['Премия', 'money'],
	['Пасивный доход', 'download'],
	['Подарок', 'optin-monster '],
	['Продажа', 'sign-language']
]

income.each do |name, icon|
  Category.create( name: name, path_img: icon, "types": :income )
end

spend.each do |name, icon|
  Category.create( name: name, path_img: icon, "types": :spending )
end

User.create(email:'ya.shepitko@gmail.com', password:"12345678")

Wallet.create(name:'Хлебушек', price:"289.99", user_id:1, category_id:6)
