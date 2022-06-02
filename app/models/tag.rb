class Tag < ApplicationRecord
  has_many :taggings
  has_many :notes, through: :taggings, :source => :taggable, :source_type => 'Note'
  has_many :supplies, through: :taggings, :source => :taggable, :source_type => 'Supply'
end
