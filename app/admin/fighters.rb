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
    column '動画数' do |fighter|
      fighter.posts.count
    end
    column :created_at
    column :updated_at
    actions
  end
  
  show do |fighter|
    attributes_table(*fighter.class.columns.collect { |column| column.name.to_sym })
    panel "動画一覧" do
      table_for fighter.posts do
        column :url
        column :created_at
      end
    end
    active_admin_comments
  end
end
