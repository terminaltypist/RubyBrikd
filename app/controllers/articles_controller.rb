class ArticlesController < ApplicationController
  def new
    # This is a note
    # This variable is a new line in the Articles table
    @article = Article.new
  end
end