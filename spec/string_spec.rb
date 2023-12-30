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
end
