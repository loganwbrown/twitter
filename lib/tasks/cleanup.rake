desc "Cleans up all tweets without a user."
task :cleanup => :environment do
  
  @tweets = Tweet.where(user_id: nil)
  @tweets.destroy_all

end