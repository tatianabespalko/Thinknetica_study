# Заполнить массив числами фибоначчи до 100

fibonachchi = [0,1]

#loop do
#  next_fibonachchi = fibonachchi[-1] + fibonachchi[-2] 
#  break if next_fibonachchi >= 100
#  fibonachchi << next_fibonachchi
#end

# while fibonachchi.last < 89 do
#   fibonachchi << fibonachchi.last + fibonachchi[-2]
# end 

# print fibonachchi

while fibonachchi.last + fibonachchi[-2] < 100 do
  fibonachchi << fibonachchi.last + fibonachchi[-2]
end 

print fibonachchi
