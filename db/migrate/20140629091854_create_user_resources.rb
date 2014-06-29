class CreateUserResources < ActiveRecord::Migration
  def change
    create_table :user_resources do |t|
      
      t.integer   :user_id
      t.string    :filename
      t.string    :media
      
      t.timestamps
    end
  end
end
