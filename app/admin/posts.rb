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
  
  index do
    selectable_column
    id_column
    column :fighter
    column 'タグ数' do |post|
      post.tags.count
    end
    column :created_at
    column :updated_at
    actions
  end
  
  form do |f|
    f.inputs 'Post登録' do
      f.input :url
      f.input :fighter
      f.has_many :tagmaps, allow_destroy: true, heading: false,
                                new_record: true do |ab|
        ab.input :tag_id,
                 label: 'タグ',
                 as: :select,
                 collection: Tag.all.map { |a| [a.name, a.id] }
      end
      f.actions
    end
  end
  
  show do |post|
    attributes_table(*post.class.columns.collect { |column| column.name.to_sym })
    panel "タグ一覧" do
      table_for post.tags do
        column :id
        column :name
        column :created_at
      end
    end
    active_admin_comments
  end
  
end
