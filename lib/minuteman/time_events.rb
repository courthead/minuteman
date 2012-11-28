require "minuteman/time_spans"

# Public: Minuteman core classs
#
class Minuteman
  module TimeEvents
    # Public: Helper to get all the time trackers ready
    #
    #   event_name - The event to be tracked
    #   date       - A given Time object
    #
    def self.start(event_name, time)
      [Year, Month, Week, Day, Hour, Minute].map do |t|
        t.new(event_name, time)
      end
    end
  end
end
