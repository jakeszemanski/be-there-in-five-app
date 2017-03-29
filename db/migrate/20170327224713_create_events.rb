class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :picture

      t.timestamps
    end
  end
end
