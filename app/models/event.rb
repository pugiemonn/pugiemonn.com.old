class Event < ActiveRecord::Base
  #belongs_to :user
  #belongs_to :community
  #has_many :members
  #validates :description, presence:true
  validates :event_url, presence:true
  validates_uniqueness_of :event_url
end