class CreateTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :tokens do |t|
      t.string :slack_token_data
      t.string :google_token_data

      t.timestamps
    end
  end
end
