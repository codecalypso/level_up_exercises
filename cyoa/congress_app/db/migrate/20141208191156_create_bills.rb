class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
     t.string :bill_type
     t.integer :number
     t.integer :congress
     t.string :chamber
     t.date :introduced_on
     t.date :last_action_on
     t.datetime :last_vote_at
     t.date :last_version_on
     t.timestamps
    end
  end
end
