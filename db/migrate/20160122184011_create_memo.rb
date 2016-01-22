class CreateMemo < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.date :date
      t.text :completed_tasks
      t.text :future_plans
      t.text :notes_to_self
      t.text :successes
      t.text :disappointments
      t.text :expenses
      t.integer :user_id

      t.timestamps
    end
  end
end
