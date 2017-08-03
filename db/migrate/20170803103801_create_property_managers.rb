class CreatePropertyManagers < ActiveRecord::Migration
  def change
  	create_table :property_managers do |t|
  		t.integer :user_id
  		t.integer :property_id

  		t.timestamps
  	end
  end
end
