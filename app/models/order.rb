class Order < ApplicationRecord

belongs_to :user
belongs_to :item
has_one    :address
has_one    :card, dependent: :destroy
end
