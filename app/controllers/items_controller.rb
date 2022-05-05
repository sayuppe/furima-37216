class ItemsController < ApplicationController
  before_action :authenticate_user!, expect: [:index, :show]



    def index
      # @items = Item.order("created_at DESC") 商品一覧表示機能実装時にコメントアウトを外す
    end
  
    def new
      @item = Item.new
    end

    def create
      @item = Item.new(item_params)
      if @item.save
        redirect_to root_path
     else
      render :new
     end
    end

  
    def item_params
      params.require(:item).permit(:name, :price, :category_id, :condition_id, :shipping_cost_id, :prefecture_id, :shipping_days_id, :image).merge(user_id: current_user.id)
    end
end
  
