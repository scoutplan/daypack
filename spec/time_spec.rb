# frozen_string_literal: true

RSpec.describe Time do
  describe "time_of_day" do
    it "returns 'night' when the hour is after 10pm" do
      expect(Time.new(2020, 1, 1, 23, 0, 0).time_of_day).to eq(:night)
    end

    it "returns 'evening' when the hour is after 6pm" do
      expect(Time.new(2020, 1, 1, 18, 0, 0).time_of_day).to eq(:evening)
    end

    it "returns 'morning' when the hour is before 12pm" do
      expect(Time.new(2020, 1, 1, 11, 0, 0).time_of_day).to eq(:morning)
    end

    it "returns 'afternoon' when the hour is before 6pm" do
      expect(Time.new(2020, 1, 1, 17, 0, 0).time_of_day).to eq(:afternoon)
    end
  end

  describe "next_occurrence_of" do
    it "returns later today if the time has not yet passed" do
      result = Time.new(2020, 1, 1, 11, 0, 0).next_occurrence_of(hour: 12)
      expect(result.day).to eq(1)
      expect(result.hour).to eq(12)
    end

    it "returns the following day if the time has already passed" do
      result = Time.new(2020, 1, 1, 13, 0, 0).next_occurrence_of(hour: 12)
      expect(result.day).to eq(2)
      expect(result.hour).to eq(12)
    end
  end
end
