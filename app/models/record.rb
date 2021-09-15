class Record < ApplicationRecord
  # belongs_to :artist TODO neden yoruma aldık?
  belongs_to :user

  validates :title, :year, presence: true
end
