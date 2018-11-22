ActiveAdmin.register Post do
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
  permit_params :url, :fighter_id, tagmaps_attributes: [:tag_id, :_destroy, :id]
  
  form do |f|
    f.inputs 'Post登録' do
      f.input :url
      f.input :fighter_id
      f.has_many :tagmaps, allow_destroy: true, heading: false,
                                new_record: true do |ab|
        ab.input :tag_id,
                 label: 'タグ',
                 as: :check_boxes,
                 collection: Tag.all.map { |a| [a.name, a.id] }
      end
      f.actions
    end
  end
end
