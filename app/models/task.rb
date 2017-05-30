class Task < ApplicationRecord
  validates :status, presence: true, length: { maximum: 10 }
  validates :status, inclusion: { in: %w(1 2) }
end
