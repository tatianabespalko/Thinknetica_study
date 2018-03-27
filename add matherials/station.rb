# Класс Station (Станция):
# + Имеет название, которое указывается при ее создании
# 2. Может принимать поезда (по одному за раз)
# 3. Может возвращать список всех поездов на станции,
# находящиеся в текущий момент
# 4. Может возвращать список поездов на станции по типу
# (см. ниже): кол-во грузовых, пассажирских
# 5. Может отправлять поезда (по одному за раз, при этом,
# поезд удаляется из списка поездов, находящихся на станции).

class Station

  #attr_reader :name, :arrival

  attr_accessor :name, :arrival


  def initialize(options)
    @name = name
    @trains = []
    puts "Создана станция #{name}"
  end

#   def arrival_train(train)
#     @trains << train
#     puts "На станцию #{name} прибыл поезд № #{train.number}"
#   end

#   def departure_of_a_train(train)
#     trains.delete(train)
#     train.station = nil
#     puts "Со станции #{name} отправился поезд № #{train.number}"
#   end

#   def show_trains(type = nil)
#     if type
#       puts "Поезда на станции #{name} типа #{type}: "
#       trains.each{|train| puts train.number if train.type == type}
#     else
#       puts "Поезда на станции #{name}: "
#       trains.each{|train| puts train.number}
#     end
#   end
end

s = Station.new(name: 'Kyiv')
p s.name[:name]


 # a = { key: 'value', string: 'value2'}
 # p a[:key]



# b = ["a", "b"]

# p b[0]
# p b[1]

    # s.initialize({name: 'Kyiv'})

