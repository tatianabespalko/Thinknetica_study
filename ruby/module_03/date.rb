#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год
# может быть високосным. (Запрещено использовать встроенные в ruby методы для этого
# вроде Date#yday или Date#leap?) Алгоритм опредления високосного года: www.adm.yar.ru

=begin Год високосный, если он делится на четыре без остатка, но если он делится на 100
без остатка, это не високосный год. Однако, если он делится без остатка на 400,
это високосный год. Таким образом, 2000 г. является особым високосным годом, который бывает
лишь раз в 400 лет.
=end

puts "Введите день:"
date = gets.to_i

puts "Введите месяц:"
month = gets.to_i

puts "Введите год:"
year = gets.to_i

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
months[1] = 29 if year % 400 == 0 || ( year % 4 == 0 && year % 100 != 0 )

sum = 0
for i in 0..month-2
  sum += months[i]
end
sum += date

puts "Порядковый номер даты: #{sum}"
