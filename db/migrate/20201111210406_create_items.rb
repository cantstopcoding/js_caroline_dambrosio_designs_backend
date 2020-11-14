class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_url
      t.integer :price, :limit => 8
      t.string :description
      t.belongs_to :category, null: false, foreign_key: true
      # for more about null: false reference https://www.youtube.com/watch?v=2xvuGWI3H58&t=335s at 4:11
      t.timestamps
    end
  end
end
