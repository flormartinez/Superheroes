class CreateVoteBatmen < ActiveRecord::Migration[5.0]
  def change
    create_table :vote_batmen do |t|
      t.string :hero
      t.string :email

      t.timestamps
    end
  end
end
