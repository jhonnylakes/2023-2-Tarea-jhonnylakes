class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :sinopsis
      t.integer :duration
      t.string :premiere
      t.string :date
      t.references :director, null: false, foreign_key: true
      t.string :references

      t.timestamps
    end
  end
end
