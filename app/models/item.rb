class Item < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :situation
  belongs_to :fee
  belongs_to :area
  belongs_to :delivery

  validates :name, :content, presence: true
  validates :category_id,:situation,:fee,:area,:delivery,  numericality: { other_than: 1 , message: "can't be blank"}
  validates :price, format: { with: /[3-9][0-9]{2}|[1-9][0-9]{3,6}/ }, presence: true

end