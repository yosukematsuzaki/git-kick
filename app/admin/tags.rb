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
