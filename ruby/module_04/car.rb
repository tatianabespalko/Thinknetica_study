class Car
  # attr_writer :speed
  # attr_reader :speed
  attr_accessor :speed

  attr_reader :engine_volume

  def initialize(speed = 0, engine_volume)
    @speed = speed
    @engine_volume = engine_volume
#    @speed = 10
    # beep
    # current_speed
  end

  def start_engine
    puts "Wroom!"
  end

  def beep
    puts "beep beep"
  end

  def stop
#    @speed = 0 
    self.speed = 0
  end

  def go
#    speed = 40
#    @speed =  50
    self.speed = 50
    beep
#    puts "local speed: #{speed}, instance speed: #{@speed}"
  end

#  def current_speed
#   def speed
#     @speed
# #    speed = 23
# #    puts "Current speed: #{@speed}, local speed: #{speed}"    
# #    puts "Current speed: #{@speed}"
#   end

#   def engine_volume
#     @engine_volume    
#   end

# #  def set_speed(speed)
#   def speed=(speed)
#     @speed = speed
    
#   end
end