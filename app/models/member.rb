class Member < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  validates_numericality_of :event_id, greater_than: 0
  validates_numericality_of :user_id, greater_than: 0
end
