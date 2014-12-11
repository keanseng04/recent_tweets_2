require 'twitter'

get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/:username' do
  @username = params[:username]
  @user = TwitterUser.find_or_create_by_username(params[:username])

  if @user.tweets_stale?
    new_user = $client.user_timeline(@user.username).first(10)
    new_user.each do |key|
      @tweets = Tweet.find_or_create_by_content(content: key.text, twitter_user_id: @user.id, created_tweet: key.created_at)
    end
    tweet = @user.tweets.last
    tweet.updated_at= Time.now
    tweet.save
  end

  erb :username
end

post '/username' do
  @user = TwitterUser.find_or_create_by_username(params[:username])

    new_user = $client.user_timeline(@user.username).first(10)
    new_user.each do |key|
      @tweets = Tweet.find_or_create_by_content(content: key.text, twitter_user_id: @user.id, created_tweet: key.created_at)
    end  


  redirect "/#{params[:username]}"
end

# post '/:username/stale' do
#   if @user.tweets_stale?
#     new_user = $client.user_timeline(@user.username).first(10)
#     new_user.each do |key|
#       @tweets = Tweet.find_or_create_by_content(content: key.text, twitter_user_id: @user.id, created_tweet: key.created_at)
#     end
#     tweet = @user.tweets.last
#     tweet.updated_at= Time.now
#     tweet.save
#   end

#   erb :username
# end