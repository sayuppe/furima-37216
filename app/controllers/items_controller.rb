class ItemsController < ApplicationController
  class ItemsController < ApplicationController
    def index
      @items = Item.order("created_at DESC")
    end
  
    def new
      
    end
  
    def item_params
      params.require(:item).permit(:content, :image).merge(user_id: current_user.id)
    end
  
  
  
  end
  
end
