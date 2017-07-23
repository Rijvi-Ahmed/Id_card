class CreateIdCards < ActiveRecord::Migration[5.1]
  def change
    create_table :id_cards do |t|
      t.string :name
      t.string :department_name
      t.string :roll_number
      t.string :session

      t.timestamps
    end
  end
end
