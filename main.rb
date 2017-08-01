# Программа-магазин книг и фильмов. Версия 0.1 — заготовка.
#
# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Подключаем классы товара и классов-детей: книги и фильма
require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'

# Создадим новый товар — фильм за 290 рублей, и скажем, на складе их осталось 4 штук.
leon = Film.new(price: 290, amount: 4)

# Выведем товар в консоль
puts "Фильм Леон стоит #{leon.price} руб."
