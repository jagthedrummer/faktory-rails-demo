desc "Queue 10 instances of the RandomSleeperJob"
task queue_jobs: :environment do
  10.times do |i|
    RandomSleeperJob.perform_async
    puts "Just queued RandomSleeperJob ##{i+1}"
  end
end
