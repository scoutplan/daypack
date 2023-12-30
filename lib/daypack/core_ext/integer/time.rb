# frozen_string_literal: true

require "active_support/deprecation"
require "active_support/deprecator"
require "active_support/core_ext/date"
require "active_support/isolated_execution_state"
require "active_support/core_ext/date_and_time/calculations"
require "active_support/core_ext/integer/time"

module CoreExtensions
  module Integer
    # monkey-patch Integer with new methods for each day of the week so that we can do things like:
    # 2.sundays.from_now
    # 3.fridays.ago
    # 1.monday.from_now
    module TimeMethods
      %i[mondays tuesdays wednesdays thursdays fridays saturdays sundays].each do |day|
        define_method day do
          d = Date.current.next_occurring(day.to_s.chomp("s").to_sym)
          d += (self - 1).weeks
          ActiveSupport::Duration.days((d - Date.current).to_i)
        end

        # aliases for singular versions of the days
        alias_method :"#{day.to_s.chomp("s")}", :"#{day}"
      end
    end
  end
end

Integer.include CoreExtensions::Integer::TimeMethods
