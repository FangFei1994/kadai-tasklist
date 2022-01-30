class CreateTasks < ActiveRecord::Migration[6.1]
  #def change
  #  create_table :tasks do |t|
  #    t.string :content
#
#      t.timestamps
#    end
#  end
  
  # db:migrate
  def up
    create_table :tasks do |t|
      t.string :content
      t.timestamps
    end
  end
  
  # db:rollback
  def down
    drop_table :tasks
  end
end