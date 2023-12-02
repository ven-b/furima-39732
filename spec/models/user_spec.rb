require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user =FactoryBot.build(:user)
  end

  describe 'ユーザー登録' do
    context '新規登録できる場合' do
      it '全ての情報が存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end

    context '新規登録できない場合(ユーザー情報が原因のケース)' do
      it "nicknameが空では登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'emailが重複する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailは@を含まないと登録できない' do
        @user.email = 'test'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it "passwordが空では登録できない" do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが5文字以下の場合は登録できない' do
        @user.password = '123ab'
        @user.password_confirmation = '123ab'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'passwordが半角英数字混合でないと登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'passwordとpassword_confirmationが一致しないと登録できない' do
        @user.password = '123abc'
        @user.password_confirmation = '1234abcd'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
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
