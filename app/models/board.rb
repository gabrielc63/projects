class Board < ApplicationRecord
  has_many :lists, dependent: :destroy
  accepts_nested_attributes_for :lists, allow_destroy: true

  validates :name, presence: true, uniqueness: true
end
