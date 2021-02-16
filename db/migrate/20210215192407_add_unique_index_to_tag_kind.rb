class AddUniqueIndexToTagKind < ActiveRecord::Migration[6.0]
  def change
  	add_index :tag_kinds, :kind, unique: true
  end
end
