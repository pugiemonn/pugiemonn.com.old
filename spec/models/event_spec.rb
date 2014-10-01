require 'spec_helper'

describe Event do

  it "is valid with a description" do
    event = described_class.new(
      description: "イベント本文",
      title: "イベントタイトル"
    )
    expect(event).to be_valid
  end

  it "is invalid without a description" do
    expect(described_class.new(description: nil)).not_to be_valid
  end
end
