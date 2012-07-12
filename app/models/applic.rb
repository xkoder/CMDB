class Applic < ActiveRecord::Base
	belongs_to :server
	has_many   :maintainenceactivities
	belongs_to :department
end