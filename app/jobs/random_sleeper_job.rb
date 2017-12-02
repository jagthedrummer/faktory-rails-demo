class RandomSleeperJob
  include Faktory::Job

  def perform()
    sleep_time = rand(5)
    puts "#{self.class.name} starting: going to sleep for #{sleep_time} seconds"
    sleep(sleep_time)
    puts "#{self.class.name} finishing: after sleeping for #{sleep_time} seconds"
  end
end
