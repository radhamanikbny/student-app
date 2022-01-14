class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :firstName
      t.string :lastName
      t.integer :marks1
      t.integer :marks2
      t.integer :marks3
      t.integer :total

      t.timestamps
    end
  end
end
