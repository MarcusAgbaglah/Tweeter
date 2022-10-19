class RenameTweet < ActiveRecord::Migration[7.0]
  def change
    rename_column :tweets, :tweed_id, :tweet_id
  end
end
