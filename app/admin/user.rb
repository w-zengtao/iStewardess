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
    :catagory,
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
    
    f.inputs "User Resource" do
      f.has_many :user_resources, :allow_destroy => true do |item|
        item.input   :media
        item.input   :file_name
        item.input   :tag # 这里的tag应该是一个多选的集合 暂时都使用empty处理
        item.input   :catagory, as: :select, collection: [['未分类','0'],['图片', '1'],['视频', '2'],['音频', '3']]
      end
    end
    
    f.actions
  end
end
