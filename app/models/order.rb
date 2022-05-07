class Order < ApplicationRecord

  belongs_to :order
  belongs_to :user
  has_one    :address
end