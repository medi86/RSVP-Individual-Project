class ChangeAgainEvents < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.string :attendee
    end
  end
end
