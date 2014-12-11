require 'twitter'

$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "jiTBo72TLZ3tfmgqhqkrY0u6g"
  config.consumer_secret     = "pIytgLNS4J2bIaZHX0WEcrqxUYbkeYBot6pRHh5h4zdpYkiBcy"
  config.access_token        = "2925018613-wFhHLMXy5Q9YOyfxTbfpL64SXruT7DQm0OjwjZQ"
  config.access_token_secret = "TKonThfZhjDgzqSFVF9uB0QB1KmQStHMPLvYZeHiHk2v5"
end