class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :Tittle
      t.integer :Number_Of_Question

      t.timestamps null: false
    end
  end
end
