class BeingsHappening < ActiveRecord::Base
  belongs_to :being
  belongs_to :happening
  validates_presence_of :happening_id
  validates_presence_of :being_id
end
