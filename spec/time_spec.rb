# frozen_string_literal: true

RSpec.describe Time do
  describe "time_of_day" do
    it "returns 'night' when the hour is after 10pm" do
      expect(Time.new(2020, 1, 1, 23, 0, 0).time_of_day).to eq("night")
    end

    it "returns 'evening' when the hour is after 6pm" do
      expect(Time.new(2020, 1, 1, 18, 0, 0).time_of_day).to eq("evening")
    end

    it "returns 'morning' when the hour is before 12pm" do
      expect(Time.new(2020, 1, 1, 11, 0, 0).time_of_day).to eq("morning")
    end

    it "returns 'afternoon' when the hour is before 6pm" do
      expect(Time.new(2020, 1, 1, 17, 0, 0).time_of_day).to eq("afternoon")
    end
  end
end
