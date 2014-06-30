class AddDetailsToUserProfile < ActiveRecord::Migration
  def change
    add_column :user_profiles, :qq,           :string
    add_column :user_profiles, :wechat,       :string         
    add_column :user_profiles, :tel,          :string
    add_column :user_profiles, :add,          :string    
    add_column :user_profiles, :is_student,   :boolean
    add_column :user_profiles, :school,       :string
    add_column :user_profiles, :company,      :string
    # add_column :user_profiles, :gender,       :integer    做双性倾向的时候可以参考
  end
end
