class Group < ActiveRecord::Base
  has_and_belongs_to_many :beings
  has_and_belongs_to_many :happenings
  belongs_to :realm
  validates_presence_of :name
  validates_presence_of :description
  validates_length_of :name, :maximum => 255
  
  def <=>(other)
    self.name <=> other.name
  end
end
