# frozen_string_literal: true

RSpec.describe Array do
  describe "be_conjugation" do
    it "returns the correct conjugation for the present tense" do
      expect(%w[I].be_conjugation).to eq("am")
      expect(%w[you].be_conjugation).to eq("are")
      expect(%w[Calvin].be_conjugation).to eq("is")
      expect(%w[Calvin Andre].be_conjugation).to eq("are")
    end

    it "returns the correct conjugation for the past tense" do
      expect(%w[you].be_conjugation(tense: :past)).to eq("were")
    end

    it "returns the correct conjugation for the future tense" do
      expect(%w[you].be_conjugation(tense: :future)).to eq("will be")
      expect(%w[Calvin Andre].be_conjugation(tense: :future)).to eq("will be")
    end

    it "returns the correct conjugation for the present perfect tense" do
      expect(%w[I].be_conjugation(tense: :present_perfect)).to eq("have")
      expect(%w[you].be_conjugation(tense: :present_perfect)).to eq("have")
      expect(%w[Calvin].be_conjugation(tense: :present_perfect)).to eq("has")
      expect(%w[Calvin Andre].be_conjugation(tense: :present_perfect)).to eq("have")
    end
  end
end
