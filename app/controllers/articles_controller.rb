class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy

  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_
    @task = Task.find(params[:id])
end
