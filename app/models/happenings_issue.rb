class HappeningsIssue < ActiveRecord::Base
  belongs_to :happening
  belongs_to :issue
  validates_presence_of :happening_id
  validates_presence_of :issue_id
end
