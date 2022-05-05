class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :title, :text, presence: true

  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}


  belongs_to :user
  has_one    :buy
  has_one_attached :image
end
