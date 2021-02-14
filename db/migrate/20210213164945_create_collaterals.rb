class CreateCollaterals < ActiveRecord::Migration[6.0]
  def change
    create_table :collaterals do |t|
      t.string :name
      t.string :kind
      t.string :url

      t.timestamps
    end
  end
end
