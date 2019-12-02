class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :starts
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
