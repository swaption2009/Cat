class Breed < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings, dependent: :destroy

  accepts_nested_attributes_for :tags

  validates :name, presence: true, uniqueness: true
end
