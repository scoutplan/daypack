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

      # Given an array, return the correct form of the verb "to be" for the subject and tense of the sentence
      #
      # Examples:
      #
      # %w[I].be_congugation => "am"
      # %w[you].be_congugation => "are"
      # %w[you].be_congugation(:past) => "were"
      # %w[you].be_congugation(:future) => "will be"
      # %w[Calvin].be_congugation => "is"
      # %w[Calvin Andre].be_congugation => "are"
      # %w[Calvin Andre].be_congugation(tense: :future) => "will"
      #
      def be_conjugation(tense: :present)
        return I18n.t("be_conjugations.#{tense}.plural") if first.downcase == "you"
        return I18n.t("be_conjugations.#{tense}.first_person_singular") if count == 1 && first.downcase == "i"

        I18n.t("be_conjugations.#{tense}.#{count > 1 ? "plural" : "singular"}")
      end
      # see https://www.grammar.com/Conjugating-the-Verb-To-Be
    end
  end
end

Array.include CoreExtensions::Array::GrammarMethods
