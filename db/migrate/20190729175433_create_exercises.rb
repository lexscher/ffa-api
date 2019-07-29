class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.references :workout, foreign_key: true
      t.string :name
      t.string :description
      t.string :reps
      t.string :sets

      t.timestamps
    end
  end
end
