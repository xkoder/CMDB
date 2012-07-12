class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string  :name
      t.integer :primary_admin_id
      t.integer :secondary_admin_id
      t.string  :email
      t.string  :status
      t.text    :notes
      t.string  :hpsim_monitered
      t.string  :spectrum_monitered
      t.time    :date_last_reviewed
      t.timestamps
    end
  end
end


# ServerID
# DeviceName
# Hardware_ID(FK)
# PrimaryAdmin(FK)
# SecAdmin(FK)
# TerAdmin(FK)
# DeviceIPAddress
# DeviseStatus
# DeviseNotes
# HPSIM_Monitered
# Spectrum_Monitered
# DateLastReviewed
# DateofModification
# Modified_UserID
