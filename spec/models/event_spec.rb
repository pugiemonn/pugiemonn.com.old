require 'spec_helper'

describe Event do

  it "is valid with a description" do
    event = described_class.new(
      description: "イベント本文"
    )
    expect(event).to be_valid
  end
end
