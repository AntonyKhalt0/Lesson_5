require_relative 'train'

class CargoTrain < Train
  attr_reader :type
  @instance_count = 0

  def initialize
    super
    @type = 'Cargo'
  end

end
