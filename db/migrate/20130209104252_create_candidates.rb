class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.boolean :incumbent, default: false
      t.references :party
      t.references :constituency

      t.timestamps
    end

    add_index :candidates, :party_id
    add_index :candidates, :constituency_id
  end
end
