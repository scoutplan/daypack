# frozen_string_literal: true

RSpec.describe Integer do
  it "returns a Duration object" do
    expect(3.sundays).to be_a(ActiveSupport::Duration)
  end
end
