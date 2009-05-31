class Passion < ActiveRecord::Base
    belongs_to :issue
    belongs_to :realm
	has_many :beings
end
