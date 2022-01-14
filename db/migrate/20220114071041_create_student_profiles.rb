class CreateStudentProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :student_profiles do |t|
      t.string :email
      t.string :address
      t.integer :age
      t.integer :mobile
      t.string :image
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
