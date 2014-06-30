class CreateUserResources < ActiveRecord::Migration
  def change
    create_table :user_resources do |t|
      
      t.integer   :user_id
      t.string    :file_name
      t.string    :tag
      t.string    :media
      t.integer   :catagory      
      t.timestamps
    end
  end
end
