class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @decimal_points = @articles.size / 10 + 1
  end

  def new
    # This is to ensure that we have an errorless
    # article to pass into the error check when
    # the new-page is loaded. If we don't do this
    # @article will be nil on first load and throw
    # NoMethodErrors all over the place.

    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
