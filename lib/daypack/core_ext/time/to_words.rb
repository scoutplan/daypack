# frozen_string_literal: true

module CoreExtensions
  module Time
    # new Time method(s) for displaying words in the GUI
    module ToWords
      # time_of_day method returns things like "morning"
      def time_of_day
        return "night" if hour > 22
        return "evening" if hour > 17
        return "morning" if hour < 12

        "afternoon"
      end
    end
  end
end

Time.include CoreExtensions::Time::ToWords
