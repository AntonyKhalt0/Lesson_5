require_relative 'instance_counter'

class Station
  include InstanceCounter
  attr_reader :name, :trains_list

  @@stations_list = []

  class << self            
    def add_station_list(station)
      @@stations_list.push(station)
    end

    def all
      @@stations_list
    end

    protected
    attr_accessor :stations_list
  end

  def initialize(name)
    @name = name
    @trains_list = []
    register_instance
  end

  def add_train(train)
    @train_list.push(train)
  end

  def send_train(train) 
    @trains_list.delete(train) if @trains_list.include? train
  end

  def show_trains_on_station_by_type(type)
    @trains_list.select { |train| train.type == type }
  end
end
