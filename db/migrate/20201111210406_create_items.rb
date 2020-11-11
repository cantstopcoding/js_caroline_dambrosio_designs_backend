class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_url
      t.integer :price, :limit => 8
      t.string :description
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
