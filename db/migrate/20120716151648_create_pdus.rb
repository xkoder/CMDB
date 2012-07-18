class CreatePdus < ActiveRecord::Migration
  def change
    create_table :pdus do |t|
      t.string   :pdunumber
      t.string   :panelnumber
      t.string   :modelnumber
      t.string   :manufacturer
      t.string   :serialnumber
      t.string   :upsfeed
      t.timestamps
    end
  end
end

# PDU_ID
# PDU_Number
# PanelNumber
# Manufacturer
# SerialNumber
# UPSFeed
# ModelNumber