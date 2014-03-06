class StaticPagesController < ApplicationController
  layout 'twitter'

  def welcome
  #   UserMailer.welcome(current_user).deliver
  #   redirect_to root_path, notice: 'welcome'
  end

  def about
  end

  def tos
  end

  def privacy
  end

  def newsletter
    @newsletter = Newsletter.new
    if request.post?
      @newsletter.assign_attributes(newsletter_params)
      @newsletter.save
      redirect_to root_path, notice: 'thanks for signing up'
    end
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:newsletter_email)
  end

end
