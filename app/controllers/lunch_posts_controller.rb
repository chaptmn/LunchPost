class LunchPostsController < ApplicationController

  before_action :authenticate_user!, only: [:new]
  before_action :set_lunch_post, only: [:edit, :update, :destroy]

  def index 
    @lunch_posts = LunchPost.is_active
  end

  def new 
    @lunch_post = LunchPost.new
  end

  def create
    @lunch_post = LunchPost.new(post_params)
    if @lunch_post.save
      redirect_to root_path, notice: "投稿しました。"
    else
      flash.now[:alert] = "未入力項目があります。"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @lunch_post.update(post_params)
      redirect_to root_path, notice: "更新しました。"
    else
      flash[:alert] = "未入力項目があります。"
      render 'edit'
    end
  end

  def destroy
    if @lunch_post.delete
      redirect_to root_path, notice: "削除しました"
    else
      flash.now[:alert] = "削除できませんでした"
      render 'index'
    end
  end

  private 
    def post_params
      params.require(:lunch_post).permit!
    end

    def set_lunch_post
      @lunch_post = LunchPost.find(params[:id])
    end

end
