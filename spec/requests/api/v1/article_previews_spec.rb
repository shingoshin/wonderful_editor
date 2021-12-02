require "rails_helper"

RSpec.describe "/api/v1/article_preview/:id", type: :request do
  describe "記事詳細の更新日が" do
    subject { create(:article) }

    it " nil ではない場合" do
      # binding.pry
      expect(subject.updated_at).not_to eq nil
    end
  end
end
