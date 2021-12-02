FactoryBot.define do
  factory :api_v1_article_preview, class: "Api::V1::ArticlePreview" do
    user
    article
    article_like
    comment
  end
end
