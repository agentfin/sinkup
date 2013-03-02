class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :bio
      t.string :pic_url
      t.string :twitter_handle
      t.integer :age
      t.integer :dive_count
      t.string :hometown
      t.string :diver_type
      t.integer :diver_level

      t.timestamps
    end
  end
end
