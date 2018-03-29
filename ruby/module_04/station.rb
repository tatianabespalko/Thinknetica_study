# Класс Station (Станция):
# 1. Имеет название, которое указывается при ее создании
# 2. Может принимать поезда (по одному за раз)
# 3. Может возвращать список всех поездов на станции,
# находящиеся в текущий момент
# 4. Может возвращать список поездов на станции по типу
# (см. ниже): кол-во грузовых, пассажирских
# 5. Может отправлять поезда (по одному за раз, при этом,
# поезд удаляется из списка поездов, находящихся на станции).

class Station

  attr_reader :trains, :name

  def initialize(options)
    @name = options[:name]
    @trains = []
    puts "Создана станция #{@name}"
  end

  def arrival_train(train)
    @trains << train
    puts "Прибыл поезд #{train}"
  end

  def filter_by(type)
    return "Тип поезда #{cargo_train}" || "Тип поезда #{passenger_train}"
  end

  def departure_train(train)
    train = @trains.pop
    puts "Отправлен поезд #{train}"
  end

end

class Route

  attr_reader :stations

  def initialize(options)
    @stations = [options[:begin], options[:end]]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def remove_station(transfer_station)
    @stations.delete(transfer_station)
  end

end

class Train

  attr_accessor :number, :cars, :speed

  attr_reader :route, :current_station, :type

  def initialize
    @current_station = 0
  end

  def break
    @speed = 0
  end

  def add_car
    @car += 1 if @speed == 0
  end

  def uncouple_car
    @car -= 1 if @speed == 0 && @car >= 1
  end

  def set_route(r)
    puts "Маршрут следования #{r}"
  end

  def go_ahead
    @current_station += 1 if @current_station < @station.size - 1
  end

  def go_back
    @current_station -= 1 if @current_station > 0
  end

end

s1 = Station.new(name: 'Lviv')
s2 = Station.new(name: 'Vinnitsya')
s3 = Station.new(name: 'Kyiv')
s4 = Station.new(name: 'Kharkiv')

r1 = Route.new(s1, s2, s3)
r2 = Route.new(s1, s3, s4)
r3 = Route.new(s2, s3, s4)

train1 = Train.new(1,"passenger", 12)
train2 = Train.new(2, "cargo", 20)
train3 = Train.new(3,"passenger", 14)
train4 = Train.new(4, "cargo", 22)
