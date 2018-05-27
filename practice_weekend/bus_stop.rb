class BusStop

attr_reader :name, :queue

  def initialize(name, queue)
    @name = name
    @queue = ['Luis', 'Maria', 'Juan']
  end

  def add_person(person)
    @queue.push(person)
  end

  def get_queue_count
    return @queue.length
  end

end
