class Room < ActiveRecord::Base
  attr_accessible :name, :priority, :event_id

  has_many :talks
  belongs_to :event

  validates_presence_of :name
end
