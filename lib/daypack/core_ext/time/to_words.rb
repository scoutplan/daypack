# frozen_string_literal: true

module CoreExtensions
  module Time
    NIGHT_STARTS_AT = 22
    EVENING_STARTS_AT = 17
    MORNING_ENDS_AT = 12

    # new Time method(s) for displaying words in the GUI
    module ToWords
      # time_of_day method returns things like :morning
      def time_of_day
        return :night if hour > NIGHT_STARTS_AT
        return :evening if hour > EVENING_STARTS_AT
        return :morning if hour < MORNING_ENDS_AT

        :afternoon
      end
    end
  end
end

Time.include CoreExtensions::Time::ToWords
