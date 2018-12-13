ActiveAdmin.register Tagmap do
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
  permit_params :post_id, :tag_id
  
  
  index do
    selectable_column
    id_column
    column :post
    column :tag
    column 'fighter' do |tagmaps|
      tagmaps.post.fighter
    end
    column :created_at
    column :updated_at
    actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :post, :as => :select, :member_label => :id
      f.input :tag
    end
    f.actions
  end
end
