class Cbreaker < ActiveRecord::Base
	belongs_to  :location
	belongs_to  :pdu
end