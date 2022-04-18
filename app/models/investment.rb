class Investment < ApplicationRecord
  belongs_to :user
  has_many :groups, foreign_key: :investment_id, dependent: :destroy
end
