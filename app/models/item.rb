class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :user
  has_one    :buy

  has_one_attached :image
  
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_cost
  belongs_to :prefecture
  belongs_to :shipping_days

  with_options presence: true do
    validates :image
    validates :name
    validates :introduction
    validates :category_id
    validates :condition_id
    validates :shipping_cost_id
    validates :shipping_days_id
    validates :prefecture
    validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  end



    validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
    validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
    validates :shipping_cost_id, numericality: { other_than: 1 , message: "can't be blank"}
    validates :prefecture_id, numericality: { other_than: 1 , message: "can't be blank"}
    validates :shipping_days_id, numericality: { other_than: 1 , message: "can't be blank"}
  
end
