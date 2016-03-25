class CreateCbTasks < ActiveRecord::Migration
  def change
    create_table :cb_tasks do |t|

      t.timestamps null: false
    end
  end
end
