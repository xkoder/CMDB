class Server < ActiveRecord::Base
	belongs_to :primary_admin, :foreign_key => "primary_admin_id", :class_name => "Admin"
	belongs_to :secondary_admin, :foreign_key => "secondary_admin_id", :class_name => "Admin"
	has_many   :applics
	has_many   :devices
end