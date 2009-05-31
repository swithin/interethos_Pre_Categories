class GroupsHappening < ActiveRecord::Base
  belongs_to :group
  belongs_to :happening
  validates_presence_of :group_id
  validates_presence_of :happening_id
end

    # UserMailer.deliver_jss_email
