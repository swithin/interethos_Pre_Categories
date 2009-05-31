class Issue < ActiveRecord::Base
  has_and_belongs_to_many :happenings
  has_many :passions
  
  def <=>(other)
    self.question_or_uri <=> other.question_or_uri
  end
end
