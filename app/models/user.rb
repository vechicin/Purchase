class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :investments, foreign_key: :user_id, dependent: :destroy
  has_many :groups, foreign_key: :user_id, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
end
