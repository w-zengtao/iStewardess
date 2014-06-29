ActiveAdmin.register User do
  
  permit_params :name, :email, :password, :password_confirmation, :avatar,
  
  :user_profile_attributes => [
    :id,
    :email,
    :birthday
  ]
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
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
