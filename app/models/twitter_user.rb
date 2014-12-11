class TwitterUser < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tweets

  def tweets_stale?
    duration = Time.now - self.tweets.last.updated_at
    if duration.floor > 60.seconds
      return true
    end
    false
  end

  def fetch_tweets
  end
end
