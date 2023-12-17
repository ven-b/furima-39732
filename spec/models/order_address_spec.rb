require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  before do
    user = FactoryBot.create(:user)
    item = FactoryBot.build(:item)
    @order_address = FactoryBot.build(:order_address, user_id: user.id, item_id: item.id)
  end

  describe '商品購入機能' do
    context '商品購入できる場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
      end
      it 'building_nameは空でも保存できること' do
      end
    end

    context '商品購入できない場合' do
      it 'postal_codeが空だと保存できないこと' do
      end
      it 'postal_codeが半角のハイフンを含んでないと保存できないこと' do
      end
      it 'postal_codeの表示が「3桁ハイフン4桁」以外の桁だと保存できないこと' do
      end
      it 'postal_codeが半角数値以外だと保存できないこと' do
      end
      it 'area_idが初期値(1)では登録できない' do
      end
      it 'cityが空だと保存できないこと' do
      end
      it 'streetが空だと保存できないこと' do
      end
      it 'building_nameが空だと保存できないこと' do
      end
      it 'phone_numberが空だと保存できないこと' do
      end
      it 'phone_numberが9桁以下だと保存できないこと' do
      end
      it 'phone_numberが12桁以上だと保存できないこと' do
      end
      it 'phone_numberが半角数値以外だと保存できないこと' do
      end
      it 'userが紐付いていないと保存できないこと' do
      end
      it 'itemが紐付いていないと保存できないこと' do
      end
    end
  end
end
