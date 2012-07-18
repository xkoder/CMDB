class CreateCbreakers < ActiveRecord::Migration
  def change
    create_table :cbreakers do |t|
      t.string   :cbindex
      t.integer  :cbrating
      t.string   :receptical
      t.string   :cableserialnumber
      t.integer  :volatge
      t.integer  :location_id
      t.integer  :pdu_id
      t.timestamps
    end
  end
end

# CB_ID
# CBIndex
# CBRatings
# Receptical
# CableSerialNumber
# LocationID
# Volatge