class Car
  attr_reader :current_rpm
  # завести двигатель

  def initialize
    @current_rpm = 0
  end

  def start_engine
    # запустить двигатель, если он не запущен
    start_engine! if engine_stopped?
  end

    # остановить двигатель
  def engine_stopped?
    # true, если обороты на нуле
    current_rpm.zero?
  end

  private

  attr_writer :current_rpm

  def initial_rpm
    700
  end

#  INITIAL_RPM = 700
  def start_engine!
    # устанавливает начальные обороты
    self.current_rpm = initial_rpm
#    self.current_rpm = INITIAL_RPM
  end
end

    # class Driver
    #   def drive (car)
    #     # сесть в машину
    #     # запустить двигатель
    #     car.start_engine
    #     #тронуться с места

    #   end
    # end
