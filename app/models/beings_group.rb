class BeingsGroup < ActiveRecord::Base
  belongs_to :being
  belongs_to :group
  validates_presence_of :group_id
  validates_presence_of :being_id
end
