class ArticlesController < ApplicationController
  def new
    # This is a note
    # This variable is a new line in the Articles table
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    if @article.save
      # Example of flash message
      flash[:notice] = "Thank you for your submission"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end