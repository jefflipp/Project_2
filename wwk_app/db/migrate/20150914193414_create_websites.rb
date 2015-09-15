class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.text :url
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
