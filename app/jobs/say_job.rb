class SayJob < ActiveJob::Base
  queue_as :default

  def perform phrase
    sleep 1
    system "say", phrase
  end
end
