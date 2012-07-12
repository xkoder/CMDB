class Device < ActiveRecord::Base
	belongs_to :server
	belongs_to :location
end