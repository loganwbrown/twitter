class TweetsController < ApplicationController
  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      flash[:succes] = 'You have created a new tweet'
      redirect_to user_path(current_user)
    else
      flash[:error] = 'Your tweet was not created.'
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @tweet.destroy
    flash[:notice] = 'That tweet was removed.'
    redirect_to user_path(current_user)
  end

  def show
    @tweet = Tweet.all  
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :user_id)
  end



end
