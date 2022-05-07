require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    @order_address = FactoryBot.build(:order_address)
  end


  describe '配送先情報の保存' do
    context '配送先情報の保存ができるとき' do
      it '全ての値が正しく入力されていれば保存できること' do
        expect(@order_address).to be_valid
      end
      it 'user_idが空でなければ保存できる' do
      end
      it 'item_idが空でなければ保存できる' do
      end
      it '郵便番号が「3桁＋ハイフン＋4桁」の組み合わせであれば保存できる' do
        @order_address.post_code = '123-4560'
        expect(@order_address).to be_valid
      end
      it '都道府県が「---」以外かつ空でなければ保存できる' do
      end
      it '市区町村が空でなければ保存できる' do
      end
      it '番地が空でなければ保存できる' do
      end
      it '建物名が空でも保存できる' do
      end
      it '電話番号が11番桁以内かつハイフンなしであれば保存できる' do
      end
    end

    context '配送先情報の保存ができないとき' do
      it 'user_idが空だと保存できない' do
      end
      it 'item_idが空だと保存できない' do
      end
      it '郵便番号が空だと保存できないこと' do
      end
      it '郵便番号にハイフンがないと保存できないこと' do
      end
      it '都道府県が「---」だと保存できないこと' do
      end
      it '都道府県が空だと保存できないこと' do
      end
      it '市区町村が空だと保存できないこと' do
      end
      it '番地が空だと保存できないこと' do
      end
      it '電話番号が空だと保存できないこと' do
      end
      it '電話番号にハイフンがあると保存できないこと' do
      end
      it '電話番号が12桁以上あると保存できないこと' do
      end
      it 'トークンが空だと保存できないこと' do
      end
    end
  end
end