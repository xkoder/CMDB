class CreateApplics < ActiveRecord::Migration
  def change
    create_table :applics do |t|
      t.string  :name
      t.string  :status
      t.string  :version
      t.string  :description
      t.string  :maintwin_day
      t.integer :start_time
      t.integer :end_time
      t.integer :server_id
      
      t.timestamps
    end
  end
end

# AppID
# AppName
# Status
# AppVersion
# MaintWindow
# Dept_ID(FK)
# TgrpID(FK)
# Description
# DateofModification
# Modified_UserID