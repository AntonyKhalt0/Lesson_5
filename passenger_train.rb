require_relative 'train'

class PassengerTrain < Train
  attr_reader :type
  @instance_count = 0

  def initialize
    super
    @type = 'Passenger'
  end

end
