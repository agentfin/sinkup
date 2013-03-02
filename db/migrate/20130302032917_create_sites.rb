class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :location
      t.float :gps_lat
      t.float :gps_lon
      t.string :description
      t.integer :difficulty
      t.integer :depth
      t.string :site_type
      t.string :sub_type
      t.date :sink_date

      t.timestamps
    end
  end
end
