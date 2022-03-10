require_relative 'instance_counter'

class Route
  include InstanceCounter
  attr_reader :name, :stations
  @@instances = 0

  def intialize(name, first_station, last_station)
    @name = name
    @stations = [first_station, last_station]
    self.class.register_instance
  end

  def add_station(previous_station, new_station)
    @stations.insert(@stations.index(previous_station) + 1, new_station)
  end

  def delete_station(selected_station)
    @stations.delete(selected_station)
  end

  def show_stations
    @stations.each_with_index { |station, index| "#{index.next} - станция: #{station.name}" }
  end

end
