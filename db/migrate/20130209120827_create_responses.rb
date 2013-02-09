class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.boolean :will_vote
      t.references :candidate
      t.references :constituency
      t.references :party

      t.timestamps
    end
    add_index :responses, :candidate_id
    add_index :responses, :constituency_id
    add_index :responses, :party_id
  end
end
