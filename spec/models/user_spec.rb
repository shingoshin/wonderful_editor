require "rails_helper"

RSpec.describe User, type: :model do
  context "すでに同じ名前の name,nickname が20文字を超えているとき" do
    it "nameが２０文字を超えている" do
      # binding.pry
      user = build(:user, name: "aaaaabbbbbcccccddddde")
      expect(user).to be_invalid
    end

    it "nicknameが２０文字を超えている" do
      # binding.pry
      user = build(:user, nickname: "bbbbbcccccdddddeeeeef")
      expect(user).to be_invalid
    end
  end

  context "必要な情報が揃っている場合" do
    let(:user) { build(:user) }

    it "ユーザー登録できる" do
      # binding.pry
      expect(user).to be_valid
    end
  end

  context "名前のみ入力している場合" do
    let(:user) { build(:user, email: nil, password: nil) }

    it "エラーが発生する" do
      expect(user).not_to be_valid
    end
  end

  context "email がない場合" do
    let(:user) { build(:user, email: nil) }

    it "エラーが発生する" do
      expect(user).not_to be_valid
    end
  end
end
