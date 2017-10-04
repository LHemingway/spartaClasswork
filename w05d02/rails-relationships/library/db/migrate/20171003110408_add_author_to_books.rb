class AddAuthorToBooks < ActiveRecord::Migration[5.1]
  def change
  	add_reference :books, :authors, index: true
  end
end
