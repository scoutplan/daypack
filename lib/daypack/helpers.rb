# frozen_string_literal: true

module Daypack
  module Helpers
    module DateHelper
      # rubocop:disable Metrics/AbcSize
      def string_for_time_internal_from_day(val)
        I18n.with_options locale: options[:locale], scope: options[:scope] do |locale|
          return locale.t(:today) if val.today?
          return locale.t(:tomorrow) if val.tomorrow?
          return locale.t(:yesterday) if val.yesterday?
          return locale.t(:future, count: distance_of_time_in_words_to_now(val)) if val.future?
          return locale.t(:past, count: distance_of_time_in_words_to_now(val)) if val.past?

          ""
        end
      end
      # rubocop:enable Metrics/AbcSize
    end
  end
end
