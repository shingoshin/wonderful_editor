class Api::V1::ArticlePreviewsController < ApplicationController
  before_action :set_api_v1_article_preview, only: %i[show update destroy]

  # GET /api/v1/article_previews
  # GET /api/v1/article_previews.json
  def index
    @api_v1_article_previews = Api::V1::ArticlePreview.all
  end

  # GET /api/v1/article_previews/1
  # GET /api/v1/article_previews/1.json
  def show
  end

  # POST /api/v1/article_previews
  # POST /api/v1/article_previews.json
  def create
    @api_v1_article_preview = Api::V1::ArticlePreview.new(api_v1_article_preview_params)

    if @api_v1_article_preview.save
      render :show, status: :created, location: @api_v1_article_preview
    else
      render json: @api_v1_article_preview.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/article_previews/1
  # PATCH/PUT /api/v1/article_previews/1.json
  def update
    if @api_v1_article_preview.update(api_v1_article_preview_params)
      render :show, status: :ok, location: @api_v1_article_preview
    else
      render json: @api_v1_article_preview.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/article_previews/1
  # DELETE /api/v1/article_previews/1.json
  def destroy
    @api_v1_article_preview.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_article_preview
      @api_v1_article_preview = Api::V1::ArticlePreview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_article_preview_params
      params.fetch(:api_v1_article_preview, {})
    end
end
