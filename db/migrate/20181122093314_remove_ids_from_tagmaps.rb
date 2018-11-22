class RemoveIdsFromTagmaps < ActiveRecord::Migration
  def change
    remove_column :tagmaps, :tag_id, :integer
    remove_column :tagmaps, :post_id, :integer
  end
end
