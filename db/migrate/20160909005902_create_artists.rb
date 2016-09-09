class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :email
      t.string :location
      t.string :medium
      t.string :password

      t.timestamps
    end
  end
end
