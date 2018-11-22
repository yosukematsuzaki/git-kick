class AddRefencesToTagmaps < ActiveRecord::Migration
  def change
    add_reference :tagmaps, :post, index: true, foreign_key: true
    add_reference :tagmaps, :tag, index: true, foreign_key: true
  end
end
