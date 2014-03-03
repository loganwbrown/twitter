class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = current_user
    @tweet = @user.tweets.build
    @tweets = Tweet.all
  end

end
