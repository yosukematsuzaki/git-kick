class AddPageSourceToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :page_source, :text
  end
end
