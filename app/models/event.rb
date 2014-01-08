class Event < ActiveRecord::Base
  belongs_to :community
  validates :description, presence:true
end
