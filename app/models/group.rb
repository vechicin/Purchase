class Group < ApplicationRecord
  belongs_to :user
  has_many :investments, dependent: :destroy

  validates :name, presence: true
end
