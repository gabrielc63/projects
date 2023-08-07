class Task < ApplicationRecord
  belongs_to :list, optional: true
  has_many :subtasks, class_name: 'Task', foreign_key: 'parent_task_id'
  belongs_to :parent_task, class_name: 'Task', optional: true

  accepts_nested_attributes_for :subtasks, allow_destroy: true
end
