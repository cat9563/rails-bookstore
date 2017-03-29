class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :picture_url
      t.text    :bio

      t.timestamps
    end
  end
end