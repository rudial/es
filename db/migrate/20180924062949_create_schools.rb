class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :Name
      t.string :Address
      t.string :Call_number

      t.timestamps
    end
  end
end
