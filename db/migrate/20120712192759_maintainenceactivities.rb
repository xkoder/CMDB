class Maintainenceactivities < ActiveRecord::Migration
  def change
    create_table :maintainenceactivities do |t|
      t.string  :title
      t.time    :start_date
      t.time    :end_date
      t.string  :description
      t.string  :state
      t.integer :applic_id
   
      t.timestamps
    end
  end
end

# ActId
# Title
# StartDate
# EndDate
# Description
# State
# AppID(FK)
# Hw_ID(FK)
# DateofModification
# Modified_UserID
