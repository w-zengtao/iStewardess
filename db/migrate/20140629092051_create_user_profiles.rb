class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      
      t.integer :user_id
      t.integer :email
      t.date    :birthday
      
      t.timestamps
    end
  end
end
