class Category < ApplicationRecord
  validates :name, presence: true

  has_many :ideas
  accepts_nested_attributes_for :ideas
end
