class CreateDives < ActiveRecord::Migration
  def change
    create_table :dives do |t|
      t.integer :user_id
      t.integer :site_id
      t.date :dive_date
      t.integer :dive_rating
      t.string :comment
      t.string :photo_link

      t.timestamps
    end
  end
end
