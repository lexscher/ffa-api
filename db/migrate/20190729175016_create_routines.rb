class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.references :athlete, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
