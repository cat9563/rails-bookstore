class AddAuthorToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :author_id, :integer
  end
end