require_relative 'wagon'

class PassengerWagon < Wagon
  attr_reader :type

  def initialize
    @type = 'Passenger'
  end
  
end
