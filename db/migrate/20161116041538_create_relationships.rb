class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :Follower_id
      t.integer :Followed_id

      t.timestamps null: false
    end
  end
end
