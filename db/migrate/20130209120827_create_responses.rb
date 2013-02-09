class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.boolean :will_vote
      t.references :candidate

      t.timestamps
    end
    add_index :responses, :candidate_id
  end
end
