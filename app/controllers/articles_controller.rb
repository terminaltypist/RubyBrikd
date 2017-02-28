class ArticlesController < ApplicationController
  def new
    # This is a note
    # This variable is a new line in the Articles table
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end