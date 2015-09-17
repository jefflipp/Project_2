class AddKidRefToWebsites < ActiveRecord::Migration
  def change
    add_reference :websites, :kid, index: true, foreign_key: true
  end
end
