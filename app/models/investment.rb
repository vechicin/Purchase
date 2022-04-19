class Investment < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :investment_groups, dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true
end
