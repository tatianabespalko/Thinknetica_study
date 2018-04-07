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

  # def filter_by(type)
  #   return "Тип поезда #{cargo_train}" || "Тип поезда #{passenger_train}"
  # end

  def departure_train(train)
    @trains.delete(train)
    puts "Cо станции отправлен поезд #{train}"
  end

  def trains_list(type = nil)
    if type
      puts "Поезда на станции #{@name} типа #{type}: "
      @trains.each{ |train| puts train.number if train.type == type }
    else
      puts "Поезда на станции #{@name}: "
      @trains.each{ |train| puts train.number }
    end
  end

  # def trains_list
  #   @trains.each { |train| puts "Поезд № #{train.number} типа #{train.type}." }
  # end

  # def trains_list_type(type)
  #   @trains.count { |train| train.type == type }
  # end

  # def each_train
  #   @trains.each { |train| yield train }
  # end

end

class Route

  attr_reader :stations

  def initialize(options)
    @stations = [ options[:first], options[:last] ]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def remove_station(station)
    if [ stations[0], stations[-1] ].include?(station)
      puts "Первую и последнюю станции маршрута удалять нельзя!"
    else
      @stations.delete(station)
      puts "Из маршрута #{@name} удалена станция #{station}"
    end
  end

  def show_stations
    puts "Список станций на маршруте: "
    @stations.each { |station| puts "#{station}" }
  end
end

class Train

  attr_reader :number, :vans, :speed, :route, :current_station, :type

  def initialize(number, type, vans)
    @number = number
    @type = type
    @vans = vans
    @current_station = 0
  end

  def break
    @speed = 0
  end

  def add_van
    @van += 1 if @speed == 0
  end

  def uncouple_van
    @van -= 1 if @speed == 0 && @van >= 1
  end

  def set_route(route)
    @route = route
    puts "Маршрут следования #{route}"
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

route1 = Route.new( first: 's1', last: 's2' )
route1.add_station(s3)
route1.show_stations
route1.remove_station(s3)

train1 = Train.new(1,"passenger", 12)
train2 = Train.new(2, "cargo", 20)
train3 = Train.new(3,"passenger", 14)
train4 = Train.new(4, "cargo", 22)

