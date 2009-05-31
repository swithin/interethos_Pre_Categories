class Happening < ActiveRecord::Base
  has_and_belongs_to_many :issues
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :beings
  belongs_to :realm
  
  def <=>(other)
    self.name <=> other.name
  end
end
