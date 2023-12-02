require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'ユーザー登録' do
    context '新規登録できる場合' do
      it '全ての情報が存在すれば登録できる' do

      end
    end

    context '新規登録できない場合(ユーザー情報が原因のケース)' do
      it "nicknameが空では登録できない" do

      end
      it "emailが空では登録できない" do

      end
      it 'emailが重複する場合は登録できない' do

      end
      it 'emailは@を含まないと登録できない' do

      end
      it "passwordが空では登録できない" do

      end
      it 'passwordが5文字以下の場合は登録できない' do

      end
      it 'passwordが半角英数字混合でないと登録できない' do

      end
      it 'passwordとencrypted_passwordが一致しないと登録できない' do

      end

    end

    context '新規登録できない場合(本人情報確認が原因のケース)' do
      it "last_nameが空では登録できない" do

      end
      it "last_nameが全角（漢字・ひらがな・カタカナ）でないと登録できない" do

      end
      it "first_nameが空では登録できない" do

      end
      it "first_nameが全角（漢字・ひらがな・カタカナ）でないと登録できない" do

      end
      it "last_kana_nameが空では登録できない" do

      end
      it "last_kana_nameが全角（カタカナ）でないと登録できない" do

      end
      it "first_kana_nameが空では登録できない" do

      end
      it "first_kana_nameが全角（カタカナ）でないと登録できない" do

      end
      it "birthdayが空では登録できない" do

      end
    end

  end
end
