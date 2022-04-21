class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :name, presence: true
  validates :amount, presence: true

  def self.total_amount(group_id)
    investments = Investment.where(group_id:)
    return 0 if investments.empty?

    investments.map(&:amount).sum.round(2)
  end
end
