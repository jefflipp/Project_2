class AddNameToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :name, :string
  end
end
