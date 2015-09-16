class AddPaperclipToKid < ActiveRecord::Migration
  def change
  	add_attachment :kids, :image 
  end
end
