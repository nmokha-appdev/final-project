class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :decision_id
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
