class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :is
      t.boolean :public
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
