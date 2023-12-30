# frozen_string_literal: true

RSpec.describe Array do
  describe "to_grammatical_list" do
    it "returns an empty string when the array is empty" do
      expect([].to_grammatical_list).to eq("")
    end

    it "returns the first element when there is only one element" do
      expect(["Garth"].to_grammatical_list).to eq("Garth")
    end

    it "returns two elements joined by 'and'" do
      expect(%w[Ebony Ivory].to_grammatical_list).to eq("Ebony and Ivory")
    end

    it "returns three elements joined by commas and 'and'" do
      expect(%w[soup salad sandwich].to_grammatical_list).to eq("soup, salad, and sandwich")
    end

    it "returns the correct conjunction" do
      expect(%w[soup salad sandwich].to_grammatical_list(conjunction: "or")).to eq("soup, salad, or sandwich")
    end

    it "omits the Oxford comma for barbarians who shun it" do
      expect(%w[soup salad sandwich].to_grammatical_list(oxford_comma: false)).to eq("soup, salad and sandwich")
    end
  end
end
