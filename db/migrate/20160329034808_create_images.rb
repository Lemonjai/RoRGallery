class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.string :image_title
      t.string :image__file_size
      t.string :image_content_type
      t.string :image_description
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
