class Group < ApplicationRecord
  belongs_to :user
  has_many :investments, through: :investment_groups, dependent: :destroy

  validates :name, presence: true
end
