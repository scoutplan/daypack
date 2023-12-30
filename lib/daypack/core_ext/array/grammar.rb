# frozen_string_literal: true

module CoreExtensions
  module Array
    # adds a method to Array to convert it to a grammatical list
    module GrammarMethods
      # Given an array, return a string with the elements of the array in a grammatical list.
      #
      # Examples:
      # [].to_grammatical_list => ""
      # ["Garth"].to_grammatical_list => "Garth"
      # ["Ebony", "Ivory"].to_grammatical_list => "Ebony and Ivory"
      # ["soup", "salad", "sandwich"].to_grammatical_list => "soup, salad, and sandwich"
      # ["soup", "salad", "sandwich"].to_grammatical_list(oxford_comma: false) => "soup, salad and sandwich"
      # ["soup", "salad", "sandwich"].to_grammatical_list(conjunction: "or") => "soup, salad, or sandwich"
      def to_grammatical_list(conjunction: "and", oxford_comma: true)
        return "" if count.zero?
        return first if count == 1

        [self[0..-2].join(", "), count > 2 && oxford_comma ? "," : "", " #{conjunction} ", last].join
      end
    end
  end
end

Array.include CoreExtensions::Array::GrammarMethods
