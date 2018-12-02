class TweetsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
    binding.pry
  end

  private

  def move_to_index
    redirect_to action: :index unless user_signed_in?
    # indexアクションを強制的に実行する
  end

  def tweet_params
    params.permit(:name, :image, :text)
  end

end
