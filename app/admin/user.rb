ActiveAdmin.register User do
  
  permit_params :name, :email, :password, :password_confirmation, :avatar,
  
  :user_profile_attributes => [
    :id,
    :email,
    :birthday
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
    
    f.actions
  end
end
