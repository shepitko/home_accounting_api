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
]

income.each do |name, icon|
  Category.create( name: name, path_img: icon, "types": :income )
end

spend.each do |name, icon|
  Category.create( name: name, path_img: icon, "types": :spending )
end