require_relative '../config'

class CreateLegislators < ActiveRecord::Migration

  def change
  # HINT: checkout ActiveRecord::Migration.create_table

    create_table :legislators do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :party
      t.string :state
      t.string :district
      t.string :twitter_id
  
      t.timestamps
    end
  end

end
