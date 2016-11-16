class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :Action_table_id
      t.string :Action_type
      t.string :Action_table_name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
