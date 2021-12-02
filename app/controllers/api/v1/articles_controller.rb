module Api::V1
  class ArticlesController < BaseApiController
    # base_api_controller を継承
    # before_action :set_article, only: %i[show update destroy]

    # GET /api/v1/articles
    # GET /api/v1/articles.json
    def index
      articles = Article.order(updated_at: :desc)
      render json: articles, each_serializer: Api::V1::ArticlePreviewSerializer
    end

    # GET /api/v1/articles/1
    # GET /api/v1/articles/1.json
    def show
      article = Article.find(params[:id])
      render json: article, serializer: Api::V1::ArticleSerializer
    end

    # # POST /api/v1/articles
    # # POST /api/v1/articles.json
    def create
      article = current_user.articles.create!(article_params)
      render json: article, serializer: Api::V1::ArticleSerializer
    end

    private

      def article_params
        params.require(:article).permit(:title, :body)
      end

    # # PATCH/PUT /api/v1/articles/1
    # # PATCH/PUT /api/v1/articles/1.json
    # def update
    #   if @article.update(article_params)
    #     render :show, status: :ok, location: @article
    #   else
    #     render json: @article.errors, status: :unprocessable_entity
    #   end
    # end

    # # DELETE /api/v1/articles/1
    # # DELETE /api/v1/articles/1.json
    # def destroy
    #   @article.destroy
    # end
  end
end
