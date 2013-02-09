class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :abbreviation
      t.string :full_name
      t.string :colour

      t.timestamps
    end
  end
end
