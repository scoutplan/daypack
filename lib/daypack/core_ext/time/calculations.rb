# frozen_string_literal: true

module CoreExtensions
  module Time
    module Calculations
      def next_occurrence_of(hour:, minute: 0, second: 0)
        result = change(hour: hour, min: minute, sec: second)
        return result + 1.day if result < self

        result
      end
    end
  end
end

Time.include CoreExtensions::Time::Calculations
