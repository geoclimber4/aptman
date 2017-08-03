class CreateTenants < ActiveRecord::Migration
  def change
  	create_table :tenats do |t|
  		t.string :first_name, :null => false
  		t.string :last_name, :null => false
  		t.integer :phone

  		t.timestamps
  	end
  end
end
