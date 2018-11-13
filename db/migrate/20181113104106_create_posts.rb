class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :url
      t.integer :person_id
      t.timestamps
    end
  end
end
