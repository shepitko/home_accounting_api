#spend = [	['Продукты', 'shopping-basket '],	['Одежда', 'black-tie'],	['Техника', 'camera-retro'],	['Подарки', 'gift'],	['Бытовая химия', 'flask'],	['Рестораны', 'glass or glass'],	['Путешествия', 'compass'],	['Проезд', 'bus'],	['Развлечение', 'puzzle-piece or gamepad'],	['Другое',  'meh-o']]

#income = [['Зарплата', 'credit-card'],	['Премия', 'money'],	['Пасивный доход', 'download'],	['Подарок', 'optin-monster '],	['Продажа', 'sign-language']]

#income.each do |name, icon|
#  Category.create( name: name, path_img: icon, "types": :income )
#end

#spend.each do |name, icon|
  #Category.create( name: name, path_img: icon, "types": :spending )
#end

#User.create(email:'ya.shepitko@gmail.com', password:"12345678")

Wallet.create(name:'Хлебушек1', price:"2289.49", user_id:1, category_id:2)
Wallet.create(name:'Хлебушек2', price:"2819.39", user_id:1, category_id:2)
Wallet.create(name:'Хлебушек3', price:"2829.19", user_id:1, category_id:2)
Wallet.create(name:'Хлебушек4', price:"289.97", user_id:1, category_id:3)
Wallet.create(name:'Хлебушек5', price:"2489.79", user_id:1, category_id:4)
Wallet.create(name:'Хлебушек6', price:"2889.29", user_id:1, category_id:1)
Wallet.create(name:'Хлебушек7', price:"2589.59", user_id:1, category_id:1)
