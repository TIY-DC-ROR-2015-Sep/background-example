class SayJob < ActiveJob::Base
  queue_as :default

  def perform phrase, sleep_time
    puts "Sleeping for #{sleep_time}"
    sleep sleep_time
    if rand(1 .. 10) < 3
      1 / 0
    end
    system "say", phrase
  end
end
