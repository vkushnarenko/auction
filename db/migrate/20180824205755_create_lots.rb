class CreateLots < ActiveRecord::Migration[5.1]
  def change
    create_table :lots do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.float :startPrice
      t.datetime :startTime
      t.integer :duration

      t.timestamps
    end
  end
end
