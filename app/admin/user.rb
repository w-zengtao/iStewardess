ActiveAdmin.register User do
  
  permit_params :name, :email, :password, :password_confirmation, :avatar,
  
  :user_profile_attributes => [
    :id,
    :email,
    :birthday
  ],
  
  :user_resources_attributes => [
    :id,
    :file_name,
    :media,
    :tag,
    :type,
    :_destroy => true
  ]
  
  index do
    selectable_column
    id_column
    column :email
    column :sign_in_count
    
    actions
  end
  
  form do |f|
    f.inputs "User Base" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :avatar
    end
    
    f.inputs "User Profile", :for => [:user_profile, f.object.user_profile || UserProfile.new ] do |profile|
      profile.input :email
      profile.input :birthday
    end
    
    f.inputs do
      f.has_many :user_resources, :allow_destroy => true do |item|
        item.input   :media
        item.input   :file_name
        item.input   :tag
        item.input   :type, as: :select, collection: [['图片', '0'],['视频', '1'],['音频', '2']]
      end
    end
    
    f.actions
  end
end
