require_relative 'wagon'

class CargoWagon < Wagon
  attr_reader :type

  def initialize
    @type = 'Cargo'
  end
  
end
