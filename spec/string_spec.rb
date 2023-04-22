# frozen_string_literal: true

RSpec.describe String do
  describe "question?" do
    it "returns true when the string ends in a question mark" do
      expect("Is this a question?".question?).to eq(true)
    end

    it "returns false when the string ends in a question mark" do
      expect("This is not a question".question?).to eq(false)
    end
  end

  describe "sentence_case" do
    it "capitalizes the first letter of a string" do
      expect("this is a sentence".sentence_case).to eq("This is a sentence")
    end

    it "doesn't barf on empty strings" do
      expect("".sentence_case).to eq("")
    end

    it "doesn't barf on 1-letter strings" do
      expect("a".sentence_case).to eq("A")
    end
  end
end
