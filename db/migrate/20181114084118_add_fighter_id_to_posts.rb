class AddFighterIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :fighter_id, :integer
  end
end
