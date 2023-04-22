# frozen_string_literal: true

# monkey-patch String with new method

module CoreExtensions
  module String
    # boolean method(s) additions to String
    module CaseMethods
      # re-open String and add a sentence_case method to it
      def sentence_case
        self[0, 1].upcase << (self[1..] || "")
      end
    end
  end
end

String.include CoreExtensions::String::CaseMethods