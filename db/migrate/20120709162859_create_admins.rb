class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string  :firstname
      t.string  :lastname
      t.string  :email
      t.string  :email_personal
      t.string  :email_other
      t.integer :phone
      t.integer :mobile
      t.integer :phone_other
      t.integer :pager
      t.integer :fax
      t.string  :cn_id
      t.integer :ps_id
      t.string  :role
      t.string  :location

      t.timestamps
    end
  end
end
