class AddNameToSites < ActiveRecord::Migration
  def change
  	add_column :sites, :site_name, :string
  end
end
