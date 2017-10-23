class Task < ApplicationRecord
  belongs_to :project
  has_and_belongs_to_many :users

  validates :name, presence: true,
                   length: { maximum: 255 }
  validates :hour, presence: true,
                   numericality: true
  validates :project_id, presence: true,
                         numericality: true
end
