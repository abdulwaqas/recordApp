ActiveAdmin.register Shop do
  
  
  index do
    selectable_column
    column :id
    column :name
    column :address
    column :phone
    column :subdomain
    actions
  end
  permit_params :name, :address, :phone, :subdomain

  form do |f|
    f.inputs :name, :address, :phone, :subdomain
    actions
  end

  
end
