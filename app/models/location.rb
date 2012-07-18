class Location < ActiveRecord::Base
	has_many  :devices
	has_many  :cbreakers
end