require 'rails_helper'

RSpec.describe Item, type: :model do
  
  describe '商品出品機能' do
    context  '商品が出品できる場合' do
      it '全ての情報が存在すれば登録できる' do
      end
    end

    context  '商品が出品できない場合' do
      it 'imageが空では登録できない' do
      end
      it 'nameが空では登録できない' do
      end
      it 'category_idが初期値(1)では登録できない' do
      end
      it 'situation_idが初期値(1)では登録できない' do
      end
      it 'fee_idが初期値(1)では登録できない' do
      end
      it 'area_idが初期値(1)では登録できない' do
      end
      it 'delivery_idが初期値(1)では登録できない' do
      end
      it 'priceが空では登録できない' do
      end
      it 'priceが300以下では登録できない' do
      end
      it 'priceが9999999以上では登録できない' do
      end
      it 'priceが半角数値以外では登録できない' do
      end
      it 'userが紐づいていないと登録できない' do
      end
    end
  end
end
