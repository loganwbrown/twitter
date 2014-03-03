class TweetsController < ApplicationController
  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to user_path(current_user), success: "You have created a new tweet."
    else
      redirect_to user_path(current_user), error: "Your tweet was not created."
    end
  end

  def destroy
    @tweet.destroy
    redirect_to user_path(current_user), notice: "That tweet was removed"
  end

  def show
    @tweet = Tweet.all  
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :user_id)
  end



end
