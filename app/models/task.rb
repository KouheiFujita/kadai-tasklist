class Task < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 10 }
  validates :status, inclusion: { in: %w(1 2) }
end
