class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string  :name
      t.string  :description
   
      t.timestamps
    end
  end
end

# DepID
# Name
# Description