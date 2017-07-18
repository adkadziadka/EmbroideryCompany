class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :url
      t.integer :year
      t.string :tag

      t.timestamps
    end
  end
end
