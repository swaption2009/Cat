class Tag < ApplicationRecord
  has_many :taggings
  has_many :breeds, through: :taggings, dependent: :destroy

  validates :trait, uniqueness: true
end
