class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def news
  	@articles = Article.all
  end

  def products
  end
end
