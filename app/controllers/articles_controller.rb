class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show update destroy]

  # GET /api/v1//articles
  # GET /api/v1//articles.json
  def index
    @articles = Article.all
  end

  # GET /api/v1//articles/1
  # GET /api/v1//articles/1.json
  def show
  end

  # POST /api/v1//articles
  # POST /api/v1//articles.json
  def create
    @article = Article.new(article_params)

    if @article.save
      render :show, status: :created, location: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1//articles/1
  # PATCH/PUT /api/v1//articles/1.json
  def update
    if @article.update(article_params)
      render :show, status: :ok, location: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1//articles/1
  # DELETE /api/v1//articles/1.json
  def destroy
    @article.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.fetch(:article, {})
    end
end
