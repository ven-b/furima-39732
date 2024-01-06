class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :orders

  validates :nickname,:birthday,               presence: true
  validates :last_name,:first_name,           format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }, presence: true
  validates :last_kana_name,:first_kana_name, format: { with: /\A[ァ-ヶー]+\z/ }, presence: true
  validates :password,                        format: { with: /\A(?=.*[a-z])(?=.*[\d])[a-z\d]+\z/i }

end