class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :user_name, :null => false
  		t.string :email, :null => false
  		t.string :hashed_password, :null => false
  		t.integer	:phone
      t.string :title

  		t.timestamps
  	end
  end
end
