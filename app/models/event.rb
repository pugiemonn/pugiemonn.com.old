class Event < ActiveRecord::Base
  belongs_to :community
  has_many :eventattendance
  validates :description, presence:true
end
