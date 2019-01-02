# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :authenticate, except: %i(index show)
  before_action :set_article,  only:   %i(show edit update destroy)

  # GET /blog
  def index
    @articles = Article.all.order(created_at: :desc)
    @featured = Article.last
  end

  # GET /blog/:id
  def show() end

  # GET /blog/new
  def new
    @article = Article.new
  end

  # POST /blog
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  # GET /blog/:id/edit
  def edit() end

  # PATCH/PUT /blog/:id
  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  # DELETE /blog/:id
  def destroy
    @article.destroy
    redirect_to blog_path
  end

  private

  def set_article
    @article = Article.friendly.find(params[:id])
  end

  def article_params
    params
      .require(:article)
      .permit(:title, :description, :text, :image)
  end
end
