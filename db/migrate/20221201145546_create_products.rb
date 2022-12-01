class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :shop, foreign_key: true
      t.string :industry

      t.timestamps
    end
  end
end
