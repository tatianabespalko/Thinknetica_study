# Заполнить массив числами фибоначчи до 100

fibonachchi = [0,1]

loop do
  next_fibonachchi = fibonachchi[-1] + fibonachchi[-2] 
  break if next_fibonachchi >= 100
  fibonachchi << next_fibonachchi
end

print fibonachchi
