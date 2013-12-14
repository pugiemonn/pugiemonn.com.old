require 'spec_helper'

describe Project do
  it { should validate_presence_of :title }
  it { should ensure_length_of(:title).is_at_least 3 }
  it { should ensure_length_of(:title).is_at_most 255 }
end
