class List < ApplicationRecord
  belongs_to :board
  has_many :tasks
  accepts_nested_attributes_for :tasks, allow_destroy: true
end
