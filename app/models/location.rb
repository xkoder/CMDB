class Location < ActiveRecord::Base
	has_many  :devices
end