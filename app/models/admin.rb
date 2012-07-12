class Admin < ActiveRecord::Base
has_many :servers, :class_name => "Server", :foreign_key => "primary_admin_id"
has_many :servers, :class_name => "Server", :foreign_key => "secondary_admin_id"
end
