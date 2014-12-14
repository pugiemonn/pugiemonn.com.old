class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :community
  has_many :members
  #validates :description, presence:true
end