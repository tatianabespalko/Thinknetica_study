# Площадь треугольника. Площадь треугольника можно вычиcлить, зная его основание (a)
# и высоту (h) по формуле: 1/2*a*h. Программа должна запрашивать основание и высоту
# треугольника и возвращать его площадь.

puts "Введите основание треугольника:"
base = gets.to_f

puts "Введите высоту треугольника:"
altitude = gets.to_f

# puts "Площадь треугольника равна: #{1.0 / 2 * base.to_f * altitude.to_f}"
puts "Площадь треугольника равна: #{0.5 * base * altitude}"
