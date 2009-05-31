class Realm < ActiveRecord::Base
    acts_as_tree :order => "name"
    has_many :groups
    has_many :happenings
    has_many :passions
end
