class AddsTagIdToTaggings < ActiveRecord::Migration[7.0]
  def change
      add_column :taggings, :tag_id, :integer
  end
end
