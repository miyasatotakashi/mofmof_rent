class CreateProperts < ActiveRecord::Migration[6.0]
  def change
    create_table :properts do |t|
      t.string :title
      t.integer :rent
      t.string :address
      t.integer :ago
      t.text :remarks

      t.timestamps
    end
  end
end
