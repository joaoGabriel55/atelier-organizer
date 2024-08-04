class CreateTaskTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :task_types do |t|
      t.string :name, null: false
    end
  end
end
