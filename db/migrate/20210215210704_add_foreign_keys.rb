class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
  	add_reference :tags, :tag_kind, foreign_key: true
  end
end
