# == Schema Information
#
# Table name: articles
#
#  id         :bigint           not null, primary key
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "rails_helper"

RSpec.describe Article, type: :model do
  context "すでに同じ名前がある場合" do
    it "title 作成に失敗" do
      # binding.pry
      # create(:user, id: 1)
      create(:article, title: "aaa") # , user_id: 1)
      article = build(:article, title: "aaa") # , user_id: 1)

      expect(article).to be_invalid
    end

    it "body 作成に失敗" do
      # binding.pry
      # create(:user, id: 1)
      create(:article, body: "aaa") # , user_id: 1)
      article = build(:article, body: "aaa") # , user_id: 1)

      expect(article).to be_invalid
    end
  end
end
