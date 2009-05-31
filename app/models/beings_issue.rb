class BeingsIssue < ActiveRecord::Base
  belongs_to :being
  belongs_to :issue
  belongs_to :passion
  validates_presence_of :issue_id
  validates_presence_of :being_id
end
