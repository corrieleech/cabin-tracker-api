class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.text :body
      t.integer :user_id
      t.boolean :read

      t.timestamps
    end
  end
end
