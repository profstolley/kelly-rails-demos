class CreateCases < ActiveRecord::Migration[5.1]
  def change
    create_table :cases do |t|
      t.string :title
      t.string :year
      t.string :author
      t.text :abstract
      t.string :subject

      t.timestamps
    end
  end
end
