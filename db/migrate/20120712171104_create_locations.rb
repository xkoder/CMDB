class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string  :campus
      t.string  :building
      t.string  :room
      t.string  :rack
      t.timestamps
    end
  end
end
