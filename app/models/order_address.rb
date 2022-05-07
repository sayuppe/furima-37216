class OrderAddress < ApplicationRecord
    include ActiveModel::Model
    attr_accessor :user_id, :item_id, :post_code, :prefecture_id, :city, :address, :building_name, :phone_number, :token
    with_options presence: true do
      
      #buyモデルのバリデーション
      validates :user_id
      validates :item_id
      #addressesモデルのバリデーション
      validates :post_code, format: { with: \A\d{3}[-]?\d{4}\z }
      validates :prefecture_id, numericality: { other_than: 1 }
      validates :city
      validates :address
      validates :phone_number, format: { \A0[5789]0[-]?\d{4}[-]?\d{4}\z }
      validates :token
    end
    def save
      order = Order.create(user_id: user_id, item_id: item_id)
      Address.create(order_id: order.id, post_code: post_code, prefecture_id: prefecture_id, city: city, address: address, building_name: building_name, phone_number: phone_number)
    end
  end

end
