class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content
      t.belongs_to :twitter_user
      t.datetime :created_tweet

      t.timestamps
    end
  end
end
