class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.text :name
      t.integer :post_id
      t.timestamps
    end
  end
end
