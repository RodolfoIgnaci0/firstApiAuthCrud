class ArticlesController < ApplicationController
  #before_action :authenticate_user!, except: [ :index ]
  before_action :set_article, only: [:destroy, :update]
    def index
        @articles = Article.all
        render json: @articles
    end
    def create
        @article = Article.create(article_params)
        render json: @article
    end
    def destroy
        Article.delete(set_article)
    end
    def update
      @article = @article.update(article_params)
      render json: @article
    end

    private
    def article_params
      params.require(:article).permit(:title, :body)
    end
    def set_article
      @article = Article.find(params[:id])
    end
end
