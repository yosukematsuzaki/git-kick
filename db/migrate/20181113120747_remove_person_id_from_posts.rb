class RemovePersonIdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :person_id, :integer
  end
end
