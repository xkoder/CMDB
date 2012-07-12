class ModifyApplicTable < ActiveRecord::Migration
  def change
    add_column :applics, :operations_manager, :string
    add_column :applics, :application_sponser, :string
    add_column :applics, :application_coordinator, :string
    add_column :applics, :customer, :string
    add_column :applics, :noof_customers, :integer
    add_column :applics, :department_id, :integer
  end
end