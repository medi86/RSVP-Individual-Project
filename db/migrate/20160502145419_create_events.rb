class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :date
      t.string :time
      t.string :location
      t.string :description

      t.timestamps null: false
    end
  end
end
