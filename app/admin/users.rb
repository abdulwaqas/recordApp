ActiveAdmin.register User do

  index do
    selectable_column
    column :id
    column :name
    column :role
    column :email
  
    actions
  end
  permit_params :email, :password, :name, :role

  

  form do |f|
    f.inputs :email, :password, :name, :role 
    actions
  end
  
end
