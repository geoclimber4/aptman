class CreateUnits < ActiveRecord::Migration
  def change
  	create_table :units do |t|
  		t.string :address, :null => false
  		t.string :name, :null => false
  		t.string :size
  		t.integer :rent_amount
  		t.integer :property_id
  		t.integer :tenant_id

  		t.timestamps
  	end
  end
end
