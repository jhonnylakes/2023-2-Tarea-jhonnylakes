class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      t.string :page
      t.string :min_score
      t.string :float
      t.string :score
      t.float :max_score
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
