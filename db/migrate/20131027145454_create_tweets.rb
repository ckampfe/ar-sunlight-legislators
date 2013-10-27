require_relative '../config'

class CreateTweets < ActiveRecord::Migration

  def change
  # HINT: checkout ActiveRecord::Migration.create_table

    create_table :tweets do |t|
      t.string  :content
      t.integer :legislator_id
      t.string  :twitter_id
      t.string  :identifier
  
      t.timestamps
    end
  end

end
