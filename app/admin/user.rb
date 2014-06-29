ActiveAdmin.register User do
  
  permit_params :name, :email, :password, :password_confirmation, :avatar
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
    f.inputs "User" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :avatar
    end
    
    f.actions
  end
end
