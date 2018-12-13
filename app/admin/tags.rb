ActiveAdmin.register Tag do
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
  permit_params :name, :parent_id
  
  index do
    selectable_column
    id_column
    column :name
    column 'parent_id' do |tag|
      Tag.find_by(id: tag.parent_id)
    end
    column 'post数' do |tag|
      tag.posts.count
    end
    column :created_at
    column :updated_at
    actions
  end
  

  form do |f|
    f.inputs 'Tag登録' do
      f.input :name
      f.input :parent_id,
              label: 'parent_id',
              as: :select,
              collection: Tag.all.map { |a| [a.name, a.id] }
  end
    f.actions
  end
end
