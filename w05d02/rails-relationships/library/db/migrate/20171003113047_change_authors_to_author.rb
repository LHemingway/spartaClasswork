class ChangeAuthorsToAuthor < ActiveRecord::Migration[5.1]
  def change
  	remove_reference :books, :authors 
  	add_reference :books, :author
  end
end
