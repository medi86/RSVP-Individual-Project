class ChangeEvents < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.string :user_id
    end
  end
end
