ActiveAdmin.register Fighter do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :name, :post_id
  
  index do
    selectable_column
    id_column
    column :name
    column :post_id
    column '動画数' do |fighter|
      fighter.posts.count
    end
    column :created_at
    column :updated_at
    actions
  end
end
