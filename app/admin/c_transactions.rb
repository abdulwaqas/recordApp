ActiveAdmin.register CTransaction do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :details, :credit, :debit, :balance, :customer_id, :user_id
  #
  # or

  # form do |f|
  #   f.inputs :title, :details, :credit, :debit, :balance, :customer_id, :user_id
  #   actions
  # end
  #
  # permit_params do
  #   permitted = [:title, :details, :credit, :debit, :balance, :customer_id, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
