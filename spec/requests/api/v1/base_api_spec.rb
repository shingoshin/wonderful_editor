require "rails_helper"

RSpec.describe "Api::V1::BaseApis", type: :request do
  describe "GET /api/v1/index" do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe "current_user テスト" do
    context "モック" do
      it "正常テスト" do
        @current_user = create(:user)
        current_user_mock = double("current_user")
        allow_any_instance_of(Api::V1::BaseApiController).to receive(:current_user).and_return(current_user_mock)
      end
    end
  end
end
