# Класс Route (Маршрут):
# + Имеет начальную и конечную станцию, а также список промежуточных станций.
# + Начальная и конечная станции указываются при создании маршрута, а промежуточные могут добавляться между ними.
# + Может добавлять промежуточную станцию в список
# + Может удалять промежуточную станцию из списка
# + Может выводить список всех станций по-порядку от начальной до конечной

class Route

  attr_reader :stations, :from, :to

  def initialize (from, to)
    @stations = [from, to]
    puts "Создан маршрут #{from.name} - #{to.name}"
  end

  def add_waypoint_station

  end

  def delete_waypoint_station

  end

  def output_list_of_the_stations

  end


  

end