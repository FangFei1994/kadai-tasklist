class AddStatusToTasks < ActiveRecord::Migration[6.1]
  #def change
  #  add_column :tasks, :status, :string
  #end
  def up
    add_column :tasks, :status, :string
  end
  
  def down
    remove_column :tasks, :status
  end
end
