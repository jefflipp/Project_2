class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :kid, index: true, foreign_key: true
      t.references :user

      t.timestamps null: false
    end
  end
end
