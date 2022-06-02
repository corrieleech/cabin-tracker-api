class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t|
      t.string :name
      t.references :taggable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
