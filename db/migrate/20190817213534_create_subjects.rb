class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :title
      t.text :description
      t.boolean :new
      t.boolean :visible

      t.timestamps
    end
  end
end
