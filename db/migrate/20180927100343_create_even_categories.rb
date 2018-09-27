class CreateEvenCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :even_categories do |t|
      t.integer :event_id
      t.integer :categeory_id

      t.timestamps
    end
  end
end
