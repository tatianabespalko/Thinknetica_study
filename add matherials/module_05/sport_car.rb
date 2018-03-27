class SportCar < Car

  def start_engine
    puts "Click!!"
    super
    puts "Wroom!!"

  end

  private

  def initial_rpm
    1000
  end
end
