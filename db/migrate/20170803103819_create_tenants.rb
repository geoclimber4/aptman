class CreateTenants < ActiveRecord::Migration
  def change
  	create_table :tenants do |t|
  		t.string :first_name, :null => false
  		t.string :last_name, :null => false
  		t.string :phone
  		t.integer :unit_id

  		t.timestamps
  	end
  end
end
