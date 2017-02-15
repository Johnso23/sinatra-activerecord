class CreateUsersTable < ActiveRecord::Migration[5.0]
  def change
  	create_table :useres do |t|
  		t.string :email
  		t.datetime :birthday
  	end
  end
end

